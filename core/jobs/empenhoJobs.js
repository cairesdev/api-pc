const Database = require("../../client/database");
const { v4: uuid } = require("uuid");
const SQLEmpenho = require("../../models/admin/empenho");

function validateDataArray(dataArray, type) {
  if (!dataArray || !Array.isArray(dataArray) || dataArray.length === 0) {
    console.warn(`${type} inexistentes ou inválidos.`);
    return false;
  }
  return true;
}

const InsertItensEmpenho = {
  key: "InsertItensEmpenho",
  options: { delay: 1000 },
  async handler(data) {
    const { empenho, empenhoId, idQueue } = data?.data || {};
    if (!validateDataArray(empenho, "Empenho")) return "Itens inexistentes.";

    console.log("Iniciando processamento dos itens de empenho...");

    // Contadores de monitoramento
    let totalItens = empenho.length;
    let processadosComSucesso = 0;
    let falhasNoProcessamento = 0;

    for (const currentItem of empenho) {
      try {
        if (!currentItem || typeof currentItem.numeroEmpenho === "undefined") {
          console.warn("Empenho inválido ou sem numeroEmpenho:", currentItem);
          falhasNoProcessamento++;
          continue;
        }

        const itemId = uuid();
        const historico =
          typeof currentItem.historicoEmpenho === "string"
            ? currentItem.historicoEmpenho
            : "";
        const numeroTCE =
          typeof currentItem.numeroContTce === "string"
            ? currentItem.numeroContTce
            : "";

        await Database.query(
          SQLEmpenho.addEmpenhoItem,
          [
            itemId,
            empenhoId,
            currentItem.codigoUnidOrcamentaria,
            currentItem.codigoFuncao,
            currentItem.codigoSubFuncao,
            currentItem.codigoPrograma,
            currentItem.codigoAcao,
            currentItem.codigoCateEconomica,
            currentItem.codigoNatuDespesa,
            currentItem.codigoModaAplicacao,
            currentItem.codigoElemDespesa,
            currentItem.codigoSubeDespesa,
            currentItem.anoEmisEmpenho,
            currentItem.numeroEmpenho,
            currentItem.dataEmisEmpenho,
            historico,
            currentItem.cpfOrdeDespesa,
            currentItem.cpfCnpjCredor,
            currentItem.codigoAplicacao,
            currentItem.tipoEmpenho,
            currentItem.valorEmpenho,
            numeroTCE,
            currentItem.fonteRecurso.tipoFontRecurso,
            currentItem.fonteRecurso.tipoCompFontRecurso,
            currentItem.fonteRecurso.ioc,
            idQueue,
          ],
          async (error, _) => {
            if (error) {
              console.error("Erro ao adicionar item ao banco de dados:", error);
              throw new Error(error);
            }
          }
        );

        processadosComSucesso++;
      } catch (error) {
        console.error("Erro ao processar item:", currentItem, error);
        falhasNoProcessamento++;
      }
    }

    console.log(`Processamento finalizado:
      - Total de itens: ${totalItens}
      - Sucessos: ${processadosComSucesso}
      - Falhas: ${falhasNoProcessamento}
    `);

    return `Processados com sucesso: ${processadosComSucesso}, Falhas: ${falhasNoProcessamento}.`;
  },
};
const InsertItensRetencao = {
  key: "InsertItensRetencao",
  options: { delay: 2000 },
  async handler(data) {
    const { retencao, empenhoId, idQueue } = data?.data || {};
    if (!validateDataArray(retencao, "Retenção")) return "Itens inexistentes.";

    for (let i = 0; retencao.length > i; i++) {
      var itemId = uuid();

      await Database.queryAsync(
        SQLEmpenho.addRetencao,
        [
          itemId,
          empenhoId,
          retencao[i].codigoUnidOrcamentaria,
          retencao[i].anoEmisEmpenho,
          retencao[i].numeroDocuLiquidacao,
          retencao[i].tipoRetencao,
          retencao[i].cpfCnpjCredor,
          retencao[i].valorRetencao,
          retencao[i].numeroEmpenho,
          retencao[i].tipoOrigRetencao,
          idQueue,
        ],
        async (error, _) => {
          if (error) {
            console.error("ADD RETNCAO", error);
            throw new Error(error);
          }
          console.log(i, _);
        }
      );
    }
    return `Processados com sucesso: ${retencao.length}.`;
  },
};

module.exports = { InsertItensEmpenho, InsertItensRetencao };
