let xmlOptions = require("../../configs/xml-js");
const Database = require("../../client/database");
const SQL = require("../../models/admin/empenho");
var createError = require("http-errors");
const { v4: uuid } = require("uuid");
const xmlJson = require("xml-js");
const processarItem = require("../../utils/processarItem");
const Queue = require("../../core/queue");

class PrestacaoFilesController {
  static async newEmpenho(req, res, next) {
    const { idPortal } = req.params;
    const { buffer } = req.file;

    try {
      var toJSON = xmlJson.xml2json(buffer, xmlOptions);

      // PELO EMPENHO CADASTRAMOS A PRESTACAODECONTAS
      let prestacaoContas =
        JSON.parse(toJSON)["emp:EmpenhoseRP"]["emp:PrestacaoContas"];

      if (!prestacaoContas) {
        return next(createError(406));
      }

      let prestacaoContasId = uuid();
      let prestacaoContasValores = {};

      // TRATAMENTO DOS DADOS
      if (Array.isArray(prestacaoContas)) {
        prestacaoContas.forEach((p_contas) => {
          prestacaoContasValores = processarItem(p_contas);
        });
      } else if (typeof prestacaoContas === "object") {
        prestacaoContasValores = processarItem(prestacaoContas);
      }

      let entidadeItem = await Database.noCallback(SQL.orgaoId, [idPortal]);

      if (entidadeItem.length == 0) {
        // REFERENCIA NO DICIONARIO
        return next(createError(440));
      }

      await Database.noCallback(SQL.addPrestContas, [
        prestacaoContasId,
        entidadeItem[0].ID,
        prestacaoContasValores.cpfContador,
        prestacaoContasValores.cpfGestor,
        prestacaoContasValores.anoReferencia,
        prestacaoContasValores.mesReferencia,
        prestacaoContasValores.diaInicPresContas,
        prestacaoContasValores.diaFinaPresContas,
      ]);

      let empenhoId = uuid();

      // CADASTRO DO EMPENHO PAI
      await Database.noCallback(SQL.addEmpenho, [
        empenhoId,
        entidadeItem[0].ID,
        prestacaoContasId,
      ]);

      // EMPENHOS
      let empenhos = JSON.parse(toJSON)["emp:EmpenhoseRP"]["emp:Empenho"];
      let empenhoValues = [];

      // Verifica se 'empenhos' é um array ou um único objeto
      if (Array.isArray(empenhos)) {
        empenhos.forEach((empenho) => {
          empenhoValues.push(processarItem(empenho));
        });
      } else if (typeof empenhos === "object") {
        empenhoValues.push(processarItem(empenhos));
      }

      let idQueueEmpenho = uuid();

      await Database.noCallback(SQL.newQueue, [
        idQueueEmpenho,
        empenhoValues.length,
        prestacaoContasId,
        "EMPENHO",
      ]);

      await Queue.add({
        name: "InsertItensEmpenho",
        data: { empenho: empenhoValues, idQueue: idQueueEmpenho, empenhoId },
      });

      // RETENCOES
      let retencoes = JSON.parse(toJSON)["emp:EmpenhoseRP"]["emp:Retencao"];
      let retencaoValues = [];

      if (Array.isArray(retencoes)) {
        retencoes.forEach((retencao) => {
          retencaoValues.push(processarItem(retencao));
        });
      } else if (typeof retencoes === "object") {
        retencaoValues.push(processarItem(retencoes));
      }

      let idQueueRetencao = uuid();

      await Database.noCallback(SQL.newQueue, [
        idQueueRetencao,
        retencaoValues.length,
        prestacaoContasId,
        "RETENCAO",
      ]);

      await Queue.add({
        name: "InsertItensRetencao",
        data: { retencao: retencaoValues, idQueue: idQueueRetencao, empenhoId },
      });

      console.log("retencoes: ", retencaoValues.length);
      console.log("empenhos: ", empenhoValues.length);
      return res.status(201).json({
        message: "Ok",
        prestacaoContasId: prestacaoContasId,
        idQueueEmpenho: idQueueEmpenho,
        idQueueRetencao: idQueueRetencao,
      });
    } catch (error) {
      console.error(error);
      return res.status(400).json({
        message: "Erro inesperado",
        res: error,
      });
    }
  }
}

module.exports = PrestacaoFilesController;
