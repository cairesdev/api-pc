//Filtrar tipo de null || number do resultado de select e converter para "utf-8"
const singleRandonFilter = (obj) => {
  for (var i in obj) {
    if (obj[i] == null) {
      //se for  null
      obj[i] = "";
    } else if (typeof obj[i] == "number") {
      //se for um número
      obj[i] = obj[i];
    }
    // Se for data (APENAS TESTES)
    // else if (obj[i] instanceof Date) {
    //   let date = new Date(obj[i]);
    //   obj[i] = date.toLocaleDateString("pt-BR");
    // }
    else {
      obj[i] = obj[i].toString("utf8"); ////converte em string
    }
  }
  return obj;
};

const multiplesRandonFilter = (multiplesObj) => {
  const arrayResult = [];
  multiplesObj.forEach((element) => {
    const obj = singleRandonFilter(element);
    arrayResult.push(obj);
  });
  return arrayResult;
};
module.exports = { singleRandonFilter, multiplesRandonFilter };
