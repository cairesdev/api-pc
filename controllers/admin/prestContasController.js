let xmlOptions = require("../../configs/xml-js");
const Database = require("../../client/database");
const SQL = require("../../models/admin/empenho");
var createError = require("http-errors");
const { v4: uuid } = require("uuid");
const xmlJson = require("xml-js");
const processarItem = require("../../utils/processarItem");

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

      let prestacaoContasId = "21883150-d5cb-4405-a601-4b5c009be11b"; //uuid();
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

      // await Database.noCallback(SQL.addPrestContas, [
      //   prestacaoContasId,
      //   entidadeItem[0].ID,
      //   prestacaoContasValores.cpfContador,
      //   prestacaoContasValores.cpfGestor,
      //   prestacaoContasValores.anoReferencia,
      //   prestacaoContasValores.mesReferencia,
      //   prestacaoContasValores.diaInicPresContas,
      //   prestacaoContasValores.diaFinaPresContas,
      // ]);

      let empenhoId = "01691473-0b6e-465c-a012-3660ec34387d"; //uuid();

      // CADASTRO DO EMPENHO PAI
      // await Database.noCallback(SQL.addEmpenho, [
      //   empenhoId,
      //   entidadeItem[0].ID,
      //   prestacaoContasId,
      // ]);

      // ESPERO RECEBER UM ARRAY
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

      if (empenhoValues.length > 0) {
        for (let i = 0; empenhoValues.length > i; i++) {
          var itemId = uuid();
          console.log(empenhoValues.length - i);
          console.log(empenhoValues[i].numeroEmpenho);

          let historico =
            typeof empenhoValues[i].historicoEmpenho !== "object"
              ? empenhoValues[i].historicoEmpenho
              : "";
          let numeroTCE =
            typeof empenhoValues[i].numeroContTce !== "object"
              ? empenhoValues[i].numeroContTce
              : "";

          await Database.noCallback(SQL.addEmpenhoItem, [
            itemId,
            empenhoId,
            empenhoValues[i].codigoUnidOrcamentaria,
            empenhoValues[i].codigoFuncao,
            empenhoValues[i].codigoSubFuncao,
            empenhoValues[i].codigoPrograma,
            empenhoValues[i].codigoAcao,
            empenhoValues[i].codigoCateEconomica,
            empenhoValues[i].codigoNatuDespesa,
            empenhoValues[i].codigoModaAplicacao,
            empenhoValues[i].codigoElemDespesa,
            empenhoValues[i].codigoSubeDespesa,
            empenhoValues[i].anoEmisEmpenho,
            empenhoValues[i].numeroEmpenho,
            empenhoValues[i].dataEmisEmpenho,
            historico,
            empenhoValues[i].cpfOrdeDespesa,
            empenhoValues[i].cpfCnpjCredor,
            empenhoValues[i].codigoAplicacao,
            empenhoValues[i].tipoEmpenho,
            empenhoValues[i].valorEmpenho,
            numeroTCE,
            empenhoValues[i].fonteRecurso.tipoFontRecurso,
            empenhoValues[i].fonteRecurso.tipoCompFontRecurso,
            empenhoValues[i].fonteRecurso.ioc,
          ]);
        }
      }

      return res.status(200).json({
        message: "Ok",
        empenhoId: empenhoId,
        prestacaoContasId: prestacaoContasId,
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
