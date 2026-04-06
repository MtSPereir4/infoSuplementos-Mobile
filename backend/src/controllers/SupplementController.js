import SupplementRepository from '../repositories/SupplementRepository.js';

class SupplementController {
  async index(req, res) {
    try {
      const data = await SupplementRepository.findAll();
      return res.json(data);
    } catch (error) {
      console.error(error);
      return res.status(500).json({ error: 'Erro ao buscar suplementos.' });
    }
  }

  async getByType(req, res) {
    try {
      const { type } = req.params; // Ex: /suplementos/type/CREATINA
      const data = await SupplementRepository.findByType(type);
      return res.json(data);
    } catch (error) {
      return res.status(500).json({ error: 'Erro ao filtrar suplementos.' });
    }
  }
}

export default new SupplementController();
