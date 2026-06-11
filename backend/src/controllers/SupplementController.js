import SupplementService from '../services/SupplementService.js';

class SupplementController {
  async index(req, res) {
    try {
      // Captura os filtros da URL (ex: /supplements?tipo=CREATINA&marca=Black%20Skull)
      const filters = req.query;

      const result = await SupplementService.getAll(filters);
      return res.status(result.status).json(result.data);
    } catch (error) {
      console.error(error);
      return res.status(500).json({ error: 'Erro ao buscar suplementos.' });
    }
  }

  async getById(req, res) {
    try {
      const { id } = req.params;
      const result = await SupplementService.getById(id);

      if (result.error) {
        return res.status(result.status).json({ error: result.error });
      }

      return res.status(result.status).json(result.data);
    } catch (error) {
      return res.status(500).json({ error: 'Erro ao buscar o suplemento.' });
    }
  }
}

export default new SupplementController();
