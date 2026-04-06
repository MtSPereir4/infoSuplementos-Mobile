import UserRepository from '../repositories/UserRepository.js';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

class AuthController {
  async register(req, res) {
    try {
      const { email } = req.body;
      const userExists = await UserRepository.findByEmail(email);

      if (userExists) {
        return res.status(400).json({ error: 'E-mail já cadastrado.' });
      }

      const userId = await UserRepository.create(req.body);
      return res
        .status(201)
        .json({ id: userId, message: 'Usuário criado com sucesso!' });
    } catch (error) {
      return res.status(500).json({ error: 'Erro ao registrar usuário.' });
    }
  }

  async login(req, res) {
    try {
      const { email, senha } = req.body;
      const user = await UserRepository.findByEmail(email);

      if (!user || !(await bcrypt.compare(senha, user.senha_hash))) {
        return res.status(401).json({ error: 'E-mail ou senha inválidos.' });
      }

      // Gera o Token JWT para o Mobile
      const token = jwt.sign(
        { id: user.id_usuario, tipo: user.tipo_usuario },
        process.env.JWT_SECRET,
        { expiresIn: '7d' }
      );

      return res.json({
        user: { id: user.id_usuario, nome: user.nome, email: user.email },
        token,
      });
    } catch (error) {
      return res.status(500).json({ error: 'Erro ao realizar login.' });
    }
  }
}

export default new AuthController();
