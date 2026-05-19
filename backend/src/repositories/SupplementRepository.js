import db from '../database/index.js';

class SupplementRepository {
  async findAll() {
    const sql = `
      SELECT s.*, m.caminho_midia 
      FROM suplementos s
      LEFT JOIN midias m ON s.id_suplemento = m.id_suplemento
      WHERE s.status_suplemento = 'ATIVO'
    `;

    const [rows] = await db.execute(sql);
    return rows;
  }

  // Novo método para a rota /supplements/:id
  async findById(id) {
    const sql = `
      SELECT s.*, m.caminho_midia 
      FROM suplementos s
      LEFT JOIN midias m ON s.id_suplemento = m.id_suplemento
      WHERE s.id_suplemento = ? AND s.status_suplemento = 'ATIVO'
    `;

    const [rows] = await db.execute(sql, [id]);
    return rows[0]; // Retorna apenas o objeto, não o array
  }
}

export default new SupplementRepository();
