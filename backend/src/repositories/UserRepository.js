import db from '../database/index.js';
import bcrypt from 'bcrypt';

class UserRepository {
  async create(userData) {
    const { nome, email, senha, tipo_usuario = 'COMUM' } = userData;

    const salt = await bcrypt.genSalt(10);
    const senha_hash = await bcrypt.hash(senha, salt);

    // Alinhado com as colunas do banco: nome_usuario, email_usuario
    const sql = `
      INSERT INTO usuarios (nome_usuario, email_usuario, senha_hash, tipo_usuario, status_usuario) 
      VALUES (?, ?, ?, ?, 'ATIVO')
    `;

    const [result] = await db.execute(sql, [
      nome,
      email,
      senha_hash,
      tipo_usuario,
    ]);
    return result.insertId;
  }

  async findByEmail(email) {
    // Alinhado com a coluna do banco: email_usuario
    const [rows] = await db.execute(
      'SELECT * FROM usuarios WHERE email_usuario = ?',
      [email]
    );
    return rows[0];
  }
}

export default new UserRepository();
