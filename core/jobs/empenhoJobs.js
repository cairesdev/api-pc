const Database = require("../../client/database");
const SQL = require("../../models/admin/queue");
const { v4: uuid } = require("uuid");
const SQLEmpenho = require("../../models/admin/empenho");
const { processItemWithTimeoutAndRetries } = require("../../utils/index");

const NewQueue = {
  key: "NewQueue",
  options: { delay: 1000, priority: 1 },
  async handler(data) {
    try {
      const idQueue = data.data.idQueue;
      const queueLength = data.data.length;
      const prestacaoContasId = data.data.prestacaoContasId;
      const tipoFila = data.data.tipoFila;

      await Database.noCallback(SQL.newQueue, [
        idQueue,
        queueLength,
        prestacaoContasId,
        tipoFila,
      ]);

      return `Processamento iniciado com sucesso.`;
    } catch (error) {
      console.error(`Erro ao processar a fila ${this.key}`, error);
      throw error;
    }
  },
};

const InsertItensEmpenho = {
  key: "InsertItensEmpenho",
  options: { delay: 1000 },
  async handler(data) {
    if (
      !data ||
      !data.data ||
      !Array.isArray(data.data.empenho) ||
      data.data.empenho.length === 0
    ) {
      return "Itens inexistentes.";
    }

    let lastItem = null;
    let itensProcessados = 0;
    const empenhoId = data.data.empenhoId;
    const idQueue = data.data.idQueue;

    while (data.data.empenho.length > 0) {
      for (let i = 0; i < data.data.empenho.length; i++) {
        const currentItem = data.data.empenho[i];

        if (currentItem && typeof currentItem.numeroEmpenho !== "undefined") {
          if (currentItem.numeroEmpenho === lastItem) {
            data.data.empenho.splice(i, 1);
            i--;
          } else {
            lastItem = currentItem.numeroEmpenho;

            try {
              await processItemWithTimeoutAndRetries(
                async () => {
                  const itemId = uuid();
                  let historico =
                    typeof currentItem.historicoEmpenho !== "object"
                      ? currentItem.historicoEmpenho
                      : "";
                  let numeroTCE =
                    typeof currentItem.numeroContTce !== "object"
                      ? currentItem.numeroContTce
                      : "";

                  await Database.noCallback(SQLEmpenho.addEmpenhoItem, [
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
                  ]);
                },
                10,
                1000,
                1000
              );

              itensProcessados++;
              console.log(`Empenhos. Total: ${itensProcessados}`);
              data.data.empenho.splice(i, 1);
              i--;
            } catch (error) {
              console.error("Erro ao processar empenho:", currentItem, error);
            }
          }
        } else {
          console.warn("Empenho inválido ou sem numeroEmpenho:", currentItem);
          data.data.empenho.splice(i, 1);
          i--;
        }
      }
    }

    // await Database.noCallback(SQL.finalizeQueue, [idQueue]);
    return `Processados ${itensProcessados} itens com sucesso.`;
  },
};

const InsertItensRetencao = {
  key: "InsertItensRetencao",
  options: { delay: 5000 },
  async handler(data) {
    if (
      !data ||
      !data.data ||
      !Array.isArray(data.data.retencao) ||
      data.data.retencao.length === 0
    ) {
      return "Itens inexistentes.";
    }

    let lastItem = null;
    let itensProcessados = 0;
    const empenhoId = data.data.empenhoId;
    const idQueue = data.data.idQueue;

    while (data.data.retencao.length > 0) {
      for (let i = 0; i < data.data.retencao.length; i++) {
        // await Database.noCallback(SQL.updateQueue, [itensProcessados, idQueue]);
        const currentItem = data.data.retencao[i];

        if (currentItem && typeof currentItem !== "undefined") {
          if (currentItem === lastItem) {
            data.data.retencao.splice(i, 1);
            i--;
          } else {
            lastItem = currentItem;

            try {
              await processItemWithTimeoutAndRetries(
                async () => {
                  const itemId = uuid();

                  await Database.noCallback(SQLEmpenho.addRetencao, [
                    itemId,
                    empenhoId,
                    currentItem.codigoUnidOrcamentaria,
                    currentItem.anoEmisEmpenho,
                    currentItem.numeroDocuLiquidacao,
                    currentItem.tipoRetencao,
                    currentItem.cpfCnpjCredor,
                    currentItem.valorRetencao,
                    currentItem.numeroEmpenho,
                    currentItem.tipoOrigRetencao,
                    idQueue,
                  ]);
                },
                10,
                1000,
                1000
              );

              itensProcessados++;
              console.log(`Retencao. Total: ${itensProcessados}`);
              data.data.retencao.splice(i, 1);
              i--;
            } catch (error) {
              console.error("Erro ao processar retencao:", currentItem, error);
            }
          }
        } else {
          console.warn("Retencao inválido ou sem numeroEmpenho:", currentItem);
          data.data.retencao.splice(i, 1);
          i--;
        }
      }
    }

    // await Database.noCallback(SQL.finalizeQueue, [idQueue]);
    return `Processados ${itensProcessados} itens com sucesso.`;
  },
};

module.exports = { InsertItensEmpenho, NewQueue, InsertItensRetencao };
