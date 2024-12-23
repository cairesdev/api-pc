// FUNÇÃO RECURSIVA
function processarItem(item) {
  let result = {};

  for (let key in item) {
    if (item[key]._text) {
      // Captura diretamente o texto
      result[key.replace(/^emp:|^gen:|^aux:/, "")] = item[key]._text;
    } else if (typeof item[key] === "object") {
      // Se for um objeto, processa recursivamente
      result[key.replace(/^emp:|^gen:|^aux:/, "")] = processarItem(item[key]);
    }
  }

  return result;
}

module.exports = processarItem;
