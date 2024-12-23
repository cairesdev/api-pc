const Database = require("../../client/database");

class InserFile {
  static async InsertFile(req, res) {
    const data = req.body;
    console.log(data.length);
    const BATCH_SIZE = 5;
    try {
      for (let i = 0; i < data.length; i += BATCH_SIZE) {
        const batch = data.slice(i, i + BATCH_SIZE);
        const promises = batch.map((item) =>
          Database.noCallback(
            "INSERT INTO CC_DEVEDORCREDORFORNECEDOR (ID, DESCRICAO) VALUES (?,?)",
            [item.id, item.desc]
          )
        );
        await Promise.all(promises);
      }

      return res.status(200).json({
        i: data.length,
      });
    } catch (error) {
      console.log(error);
      return res.status(500).json({ error });
    }
  }
}
module.exports = InserFile;
