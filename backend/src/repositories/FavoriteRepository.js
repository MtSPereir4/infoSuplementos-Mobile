import db from '../database/index.js';

class FavoriteRepository {
  async findByUserAndSupplement(userId, supplementId) {
    const [rows] = await db.execute(
      'SELECT * FROM favoritos WHERE id_usuario = ? AND id_suplemento = ?',
      [userId, supplementId]
    );

    return rows[0];
  }

  async create(userId, supplementId) {
    const [result] = await db.execute(
      'INSERT INTO favoritos (id_usuario, id_suplemento) VALUES (?, ?)',
      [userId, supplementId]
    );

    return result.insertId;
  }
}

export default new FavoriteRepository();
