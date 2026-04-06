import db from '../database/index.js';

class SupplementRepository {
  async findAll() {
    // JOIN com a tabela de mídias para já trazer o caminho da imagem
    const sql = `
      SELECT s.*, m.caminho_midia 
      FROM suplementos s
      LEFT JOIN midias m ON s.id_suplemento = m.id_suplemento
      WHERE s.status_suplemento = 'ATIVO'
    `;

    const [rows] = await db.execute(sql);
    return rows;
  }

  async findByType(type) {
    const sql = `
      SELECT s.*, m.caminho_midia 
      FROM suplementos s
      LEFT JOIN midias m ON s.id_suplemento = m.id_suplemento
      WHERE s.tipo_suplemento = ? AND s.status_suplemento = 'ATIVO'
    `;

    const [rows] = await db.execute(sql, [type]);
    return rows;
  }
}

export default new SupplementRepository();
