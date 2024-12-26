var express = require("express");
var router = express.Router();

const multer = require("multer");
const middleFile = multer({});

const prestContas = require("../controllers/admin/prestContasController");

router.post(
  "/:idPortal/empenho_file",
  middleFile.single("EMPENHO"),
  prestContas.newEmpenho
);

router.get("/", function (req, res, next) {
  res.send("v1.0");
});

module.exports = router;
