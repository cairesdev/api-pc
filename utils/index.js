const os = require("os");

async function delay(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function processItemWithTimeoutAndRetries(
  processFunction,
  retries = 3,
  timeoutMs = 2000,
  delayMs = 1000
) {
  for (let attempt = 1; attempt <= retries; attempt++) {
    try {
      const result = await Promise.race([
        processFunction(),
        new Promise((_, reject) =>
          setTimeout(
            () => reject(new Error("Tempo limite excedido")),
            timeoutMs
          )
        ),
      ]);
      return result;
    } catch (error) {
      console.error(
        `Erro ao processar item (tentativa ${attempt} de ${retries}):`,
        error.message
      );
      if (attempt < retries) {
        await delay(delayMs); // Espera antes de tentar novamente
      } else {
        throw new Error("Máximo de tentativas atingido ou timeout");
      }
    }
  }
}

/**
 * Divide o array em partes para processar em paralelo.
 * @param {Array} data - Array de dados a ser dividido.
 * @returns {Array} Arrays particionados.
 */
const sliceArray = (data) => {
  const parts = Math.min(os.cpus().length * 4, data.length);
  const length = Math.ceil(data.length / parts);
  return Array.from({ length: parts }, (_, i) =>
    data.slice(i * length, (i + 1) * length)
  );
};

module.exports = { processItemWithTimeoutAndRetries, delay, sliceArray };
