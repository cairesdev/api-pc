require("dotenv").config();
const BullQueue = require("bull");
const redisConfig = require("../configs/redis");
const logger = require("../utils/logger");
const EmpenhoJobs = require("./jobs/empenhoJobs");

const queues = Object.values(EmpenhoJobs).map((job) => {
  return {
    bull: new BullQueue(job.key, {
      redis: redisConfig,
      defaultJobOptions: {
        attempts: 5,
        removeOnComplete: true,
        backoff: 500,
        ...job.options,
      },
    }),
    name: job.key,
    handle: job.handler,
  };
});

module.exports = {
  queues,
  add({ name, data, options = {} }) {
    const queue = this.queues.find((queue) => queue.name === name);
    if (!queue) {
      throw new Error(`"${name}" não encontrada.`);
    }
    return queue.bull.add(data, { ...queue.options, ...options });
  },

  process() {
    this.queues.forEach((queue) => {
      queue.bull.process(queue.handle);

      queue.bull.on("completed", (job, returnValue) => {
        logger.info("Tarefa finalizada", { returnValue });
      });

      queue.bull.on("error", (err) => {
        logger.error("Erro na fila", { queue: queue.name, error: err.message });
      });

      queue.bull.on("failed", (job, err) => {
        logger.error("Tarefa fracassada", {
          jobId: job.id,
          error: err.message,
        });
      });
    });
  },
};
