require("dotenv").config();

const options = {
  host: process.env.FIREBIRD_HOST,
  port: process.env.FIREBIRD_PORT,
  database: process.env.FIREBIRD_DATABASE,
  user: process.env.FIREBIRD_USER,
  password: process.env.FIREBIRD_PASSWORD,
  pageSize: 4096,
};

module.exports = options;
