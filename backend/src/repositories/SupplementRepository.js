import db from '../database/index.js';

class SupplementRepository {
  async findAll(filters) {
    // 1. query base, garantindo que pegue apenas os ativos
    let sql = `
      SELECT s.*, m.caminho_midia 
      FROM suplementos s
      LEFT JOIN midias m ON s.id_suplemento = m.id_suplemento
      WHERE s.status_suplemento = 'ATIVO'
    `;

    const values = [];

    // 2. Adiciona os filtros dinamicamente se eles existirem
    if (filters.tipo) {
      sql += ` AND s.tipo_suplemento = ?`;
      values.push(filters.tipo);
    }

    if (filters.marca) {
      sql += ` AND s.marca_suplemento LIKE ?`;
      values.push(`%${filters.marca}%`);
    }

    if (filters.nome) {
      sql += ` AND s.nome_suplemento LIKE ?`;
      values.push(`%${filters.nome}%`);
    }

    const [rows] = await db.execute(sql, values);
    return rows;
  }

  async findById(id) {
    const sql = `
      SELECT s.*, m.caminho_midia 
      FROM suplementos s
      LEFT JOIN midias m ON s.id_suplemento = m.id_suplemento
      WHERE s.id_suplemento = ? AND s.status_suplemento = 'ATIVO'
    `;

    const [rows] = await db.execute(sql, [id]);
    return rows[0];
  }
}

export default new SupplementRepository();
