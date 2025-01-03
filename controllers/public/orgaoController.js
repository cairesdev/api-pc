const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

class OrgaoClass {
  static async getOrgaos(req, res) {
    try {
      const orgaos = await prisma.ti_tipovinculo.findMany();
      return res.status(200).json({
        res: orgaos,
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
module.exports = OrgaoClass;
