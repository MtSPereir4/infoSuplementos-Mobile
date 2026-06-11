import UserRepository from '../repositories/UserRepository.js';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

class AuthService {
  async register({ nome, email, senha }) {
    // 1. Validação
    if (!nome || !email || !senha) {
      return { status: 400, error: 'Nome, e-mail e senha são obrigatórios.' };
    }

    // 2. Regra de Negócio (E-mail único)
    const userExists = await UserRepository.findByEmail(email);
    if (userExists) {
      return { status: 400, error: 'E-mail já cadastrado.' };
    }

    // 3. Execução
    const userId = await UserRepository.create({ nome, email, senha });
    return {
      status: 201,
      data: { id: userId, message: 'Usuário criado com sucesso!' },
    };
  }

  async login({ email, senha }) {
    // 1. Validação
    if (!email || !senha) {
      return { status: 400, error: 'E-mail e senha são obrigatórios.' };
    }

    // 2. Regra de Negócio (Checagem de credenciais)
    const user = await UserRepository.findByEmail(email);
    if (!user || !(await bcrypt.compare(senha, user.senha_hash))) {
      return { status: 401, error: 'E-mail ou senha inválidos.' };
    }

    // 3. Geração de Token
    const token = jwt.sign(
      { id: user.id_usuario, tipo: user.tipo_usuario },
      process.env.JWT_SECRET,
      { expiresIn: '7d' }
    );

    return {
      status: 200,
      data: {
        user: {
          id: user.id_usuario,
          nome: user.nome_usuario,
          email: user.email_usuario,
        },
        token,
      },
    };
  }
}

export default new AuthService();
