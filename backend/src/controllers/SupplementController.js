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

  // Novo método
  async getById(req, res) {
    try {
      const { id } = req.params;
      const data = await SupplementRepository.findById(id);

      if (!data) {
        return res.status(404).json({ error: 'Suplemento não encontrado.' });
      }

      return res.json(data);
    } catch (error) {
      return res.status(500).json({ error: 'Erro ao buscar o suplemento.' });
    }
  }
}

export default new SupplementController();
