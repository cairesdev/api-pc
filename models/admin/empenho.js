module.exports = {
  orgaoId: `SELECT ID FROM ORGAO WHERE UUID = ?`,

  addPrestContas: `
  INSERT INTO PC_PRESTACOESDECONTAS (ID, ORGAO, CPF_CONTADOR, CPF_GESTOR, ANO_REFERENCIA, MES_REFERENCIA, DIA_INIC_PREST_CONTAS,  DIA_FIN_PREST_CONTAS) VALUES (?,(SELECT ID FROM ORGAO WHERE UUID =?),?,?,?,?,?,?);
  `,

  addEmpenho: `INSERT INTO PC_EMPENHOS (ID, ORGAO, PRESTACAODECONTAS) VALUES (?,(SELECT ID FROM ORGAO WHERE UUID = ?),?);`,

  addEmpenhoItem: `
  INSERT INTO PC_EMPENHO (ID, EMPENHO, CODIGOUNIDADEORCAMENTARIA, CODIGOFUNCAO,CODIGOSUBFUNCAO,CODIGOPROGRAMA,CODIGOACAO,CODIGOCATEECONOMICA,CODIGONATUDESPESA,CODIGOMODAAPLICACAO,CODIGOELEMENDESPESA,CODIGOSUBDESPESA,ANOEMISEMPENHO,NUMEROEMPENHO,DATAEMISEMPENHO,HISTORICOEMPENHO,CPFORDERDESPESA,CPFCNPJCREDOR,CODIGOAPLICACAO,TIPOEMPENHO,VALOREMPENHO,NUMEROCONTTCE,FR_TIPOFONTRECURSO,FR_TIPOCOMPRECURSO,FR_IOC,PROCESSO_ID) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) RETURNING ID;
  `,

  addRetencao: `
INSERT INTO PC_RETENCAO (ID, EMPENHO, CODIGOUNIDORCAMENTARIA, ANOEMISEMPENHO, NUMERODOCULIQUIDACAO, TIPORETENCAO, CPFCNPJCREDOR, VALORRETENCAO, NUMEROEMPENHO, TEPOORIGRETENCAO, PROCESSO_ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)  RETURNING ID;`,

  newQueue: `INSERT INTO CONTROLE_DE_PROCESSOS (ID, STATUS, TOTAL_ITENS, PROCESSOREFERENTE,TIPO) VALUES (?, 'INICIADA', ?, ?, ?);`,
};
