import SupplementRepository from '../repositories/SupplementRepository.js';

class SupplementService {
  // Adicionamei o parâmetro filters, com um objeto vazio como padrão
  async getAll(filters = {}) {
    const data = await SupplementRepository.findAll(filters);
    return { status: 200, data };
  }

  async getById(id) {
    const data = await SupplementRepository.findById(id);

    if (!data) {
      return { status: 404, error: 'Suplemento não encontrado.' };
    }

    return { status: 200, data };
  }
}

export default new SupplementService();
