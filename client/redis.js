const Redis = require("ioredis");
const options = require("../configs/redis");

const redis = new Redis(options);

redis.on("connect", () => {
  console.log("Redis connected");
});

redis.on("error", (err) => {
  console.log("Redis error", err);
});

module.exports = redis;
