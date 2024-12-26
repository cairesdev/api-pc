require("dotenv").config();
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");
const cors = require("cors");
const helmet = require("helmet");
const bodyParser = require("body-parser");

var indexRouter = require("./routes/index");

var app = express();

app.disable("x-powered-by");
app.set("trust proxy", 1);
app.use((req, res, next) => {
  res.set("Cache-Control", "no-store");
  res.set("Pragma", "no-cache");
  res.set("Expires", "1200");
  res.set("Connection", "close");
  next();
});

app.use(helmet());
app.use(logger("dev"));
app.use(cookieParser());
app.use(
  bodyParser.json({ limit: "200mb", extended: true, parameterLimit: 50000 })
);
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "public")));

app.set("views", path.join(__dirname, "views"));
app.set("view engine", "jade");

app.use(
  cors({
    methods: ["GET", "POST", "PUT", "PATCH", "DELETE"],
    origin: "*",
    allowedHeaders: "*",
  })
);

app.use("/", indexRouter);

app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = process.env.NODE_ENV === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render("error");
});

module.exports = app;
