const OrgaoClass = require("../../controllers/public/orgaoController");
var express = require("express");
var router = express.Router();

router.get("/portais", OrgaoClass.getOrgaos);

module.exports = router;
