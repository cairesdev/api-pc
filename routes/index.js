var express = require("express");
var router = express.Router();

const multer = require("multer");
const middleFile = multer({});

const prestContas = require("../controllers/admin/prestContasController");
const FilesSO = require("../controllers/public/insertJSON");

router.post(
  "/:idPortal/empenho_file",
  middleFile.single("EMPENHO"),
  prestContas.newEmpenho
);

router.post("/insert-file", FilesSO.InsertFile);

router.get("/", function (req, res, next) {
  res.send("v1.0");
});

module.exports = router;
