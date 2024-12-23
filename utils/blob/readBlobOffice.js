//leitura arquivo do tipo blob binary
const convertBlob = (row, attribute) => {
  return new Promise((resolve, reject) => {
    row[attribute]((err, name, e) => {
      let buffers = [];
      e.on("data", (chunk) => {
        buffers.push(chunk);
      });
      e.once("end", () => {
        let buffer = Buffer.concat(buffers);
        resolve(buffer.toString("utf8"));
      });
      e.once("error", (err) => {
        reject(err);
      });
    });
  });
};

module.exports = { convertBlob };
