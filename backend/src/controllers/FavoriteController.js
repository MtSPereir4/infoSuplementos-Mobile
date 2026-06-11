import FavoriteService from '../services/FavoriteService.js';

class FavoriteController {
  async add(req, res) {
    try {
      const result = await FavoriteService.add(
        req.user.id,
        req.params.supplementId
      );

      if (result.error) {
        return res.status(result.status).json({ error: result.error });
      }

      return res.status(result.status).json(result.data);
    } catch (error) {
      console.error(error);
      return res.status(500).json({ error: 'Erro ao adicionar favorito.' });
    }
  }
}

export default new FavoriteController();
