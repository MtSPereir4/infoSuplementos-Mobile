import FavoriteRepository from '../repositories/FavoriteRepository.js';
import SupplementRepository from '../repositories/SupplementRepository.js';

class FavoriteService {
  async add(userId, supplementId) {
    const supplement = await SupplementRepository.findById(supplementId);

    if (!supplement) {
      return { status: 404, error: 'Suplemento não encontrado.' };
    }

    const favorite = await FavoriteRepository.findByUserAndSupplement(
      userId,
      supplementId
    );

    if (favorite) {
      return {
        status: 200,
        data: { message: 'Suplemento já está nos favoritos.' },
      };
    }

    const favoriteId = await FavoriteRepository.create(userId, supplementId);

    return {
      status: 201,
      data: { id: favoriteId, message: 'Favorito adicionado com sucesso.' },
    };
  }
}

export default new FavoriteService();
