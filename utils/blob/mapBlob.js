const { multiplesRandonFilter } = require("../filterResultSelect");
const { convertBlob } = require("./readBlobOffice");

//Vai percorrer o array de objetos e vai converter o value da propriedade para string
const readAttributeBlob = async (object, property) => {
  for (var item in object) {
    if (object[item][property] != null) {
      var buffer = await convertBlob(object[item], property);
      object[item][property] = buffer;
    } else {
      // console.log('null')
      object[item][property] = "";
    }
  }
  const neObject = multiplesRandonFilter(object);
  return neObject;
};

const read = async (object, property) => {
  for (var item in object) {
    if (object[item][property] != null) {
      var buffer = await convertBlob(object[item], property);
      object[item][property] = buffer;
      // console.log(buffer);
    } else {
      // console.log('null')
      object[item][property] = "";
    }
  }
  return object;
};

const multipleReadsAttributeBlob = async (object, properties) => {
  for (var prop in properties) {
    var translate = await read(object, properties[prop]);
  }
  const newObject = multiplesRandonFilter(translate);

  return newObject;
};

module.exports = { readAttributeBlob, multipleReadsAttributeBlob };
