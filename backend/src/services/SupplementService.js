import SupplementRepository from '../repositories/SupplementRepository.js';

class SupplementService {
  async getAll() {
    const data = await SupplementRepository.findAll();
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
