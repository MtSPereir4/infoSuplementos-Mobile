import db from '../database/index.js';
import bcrypt from 'bcrypt';

class UserRepository {
  async create(userData) {
    const { nome, email, senha, tipo_usuario = 'COMUM' } = userData;

    // Criptografia da senha (Salt de 10 rounds)
    const salt = await bcrypt.genSalt(10);
    const senha_hash = await bcrypt.hash(senha, salt);

    const sql = `
      INSERT INTO usuarios (nome, email, senha_hash, tipo_usuario, status_usuario) 
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
    const [rows] = await db.execute('SELECT * FROM usuarios WHERE email = ?', [
      email,
    ]);
    return rows[0];
  }
}

export default new UserRepository();
