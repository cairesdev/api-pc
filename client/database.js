const firebird = require("node-firebird");
const options = require("../configs/db.js");
require("dotenv").config();

const {
  readAttributeBlob,
  multipleReadsAttributeBlob,
} = require("../utils/blob/mapBlob");

class Database {
  /**
   * Executa uma consulta SQL usando callbacks.
   *
   * @param {string} query - A consulta SQL a ser executada.
   * @param {Array} params - Parâmetros para a consulta SQL.
   * @param {function(Error, Array): void} callback - Função de callback para tratar o resultado ou erro.
   */
  async query(query, params, callback) {
    firebird.attach(options, function (err, db) {
      if (err) {
        return callback(err, []);
      }
      db.query(query, params, function (err, result) {
        db.detach();
        if (err) {
          return callback(err, []);
        } else {
          return callback(null, result);
        }
      });
    });
  }
  /**
   * Executa uma consulta SQL dentro de uma transação com isolamento de leitura e realiza a leitura de blobs.
   *
   * @param {string} query - A consulta SQL a ser executada.
   * @param {Array} params - Parâmetros para a consulta SQL.
   * @param {string|string[]} property - Nome do atributo para leitura do blob ou array de nomes.
   * @returns {Promise<Array>} Uma promessa que resolve com o resultado da consulta, após conversão do blob.
   */
  async queryIsolated(query, params, property) {
    return new Promise((resolve, reject) => {
      firebird.attach(options, function (err, db) {
        if (err) {
          return reject(err);
        }
        db.transaction(
          firebird.ISOLATION_READ_COMMITED,
          async (err, transaction) => {
            if (err) {
              transaction.rollback();
              return reject(err);
            }
            transaction.query(query, params, async (err, result) => {
              if (err) {
                transaction.rollback();
                db.detach();
                return reject(err);
              }
              transaction.commit();
              db.detach();
              let data;
              if (typeof property === "string") {
                data = await readAttributeBlob(result, property);
              } else if (Array.isArray(property)) {
                data = await multipleReadsAttributeBlob(result, property);
              } else {
                return reject(
                  new Error("Tipo de pesquisa e conversão inválida.")
                );
              }

              return resolve(data);
            });
          }
        );
      });
    });
  }
  /**
   * Executa uma consulta SQL e retorna uma promessa com o resultado, sem usar callbacks.
   *
   * @param {string} query - A consulta SQL a ser executada.
   * @param {Array} params - Parâmetros para a consulta SQL.
   * @returns {Promise<Array>} Uma promessa que resolve com o resultado da consulta.
   */
  async noCallback(query, params) {
    return new Promise((resolve, reject) => {
      firebird.attach(options, function (err, db) {
        if (err) {
          return reject(err);
        }
        db.query(query, params, (err, result) => {
          if (err) {
            return reject(err);
          }
          resolve(result);
        });
      });
    });
  }
}

module.exports = new Database();
