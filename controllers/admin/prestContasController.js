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

      if (!idPortal) {
        // REFERENCIA NO DICIONARIO
        return next(createError(440));
      }

      await Database.query(
        SQL.addPrestContas,
        [
          prestacaoContasId,
          idPortal,
          prestacaoContasValores.cpfContador,
          prestacaoContasValores.cpfGestor,
          prestacaoContasValores.anoReferencia,
          prestacaoContasValores.mesReferencia,
          prestacaoContasValores.diaInicPresContas,
          prestacaoContasValores.diaFinaPresContas,
        ],
        async (error, _) => {
          if (error) {
            console.error("PRESTACAO DE CONTAS", error);
            throw new Error(error);
          }
        }
      );

      let empenhoId = uuid();

      // CADASTRO DO EMPENHO PAI
      await Database.query(
        SQL.addEmpenho,
        [empenhoId, idPortal, prestacaoContasId],
        async (error, _) => {
          if (error) {
            console.error("EMPENHO PAI", error);
            throw new Error(error);
          }
        }
      );

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
      await Database.query(
        SQL.newQueue,
        [idQueueEmpenho, empenhoValues.length, prestacaoContasId, "EMPENHO"],
        async (error, _) => {
          if (error) {
            console.error("FILA EMPENHOS", error);
            throw new Error(error);
          }
        }
      );

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
      console.log("retencoes: ", retencaoValues.length);

      let idQueueRetencao = uuid();
      await Database.query(
        SQL.newQueue,
        [idQueueRetencao, retencaoValues.length, prestacaoContasId, "RETENCAO"],
        async (error, _) => {
          if (error) {
            console.error("FILA RETENCAO", error);
            throw new Error(error);
          }
        }
      );

      await Queue.add({
        name: "InsertItensRetencao",
        data: { retencao: retencaoValues, idQueue: idQueueRetencao, empenhoId },
      });

      return res.status(201).json({
        message: "Ok",
        prestacaoContasId: prestacaoContasId,
        // idQueueEmpenho: idQueueEmpenho,
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
