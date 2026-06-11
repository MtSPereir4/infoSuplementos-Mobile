import AuthService from '../services/AuthService.js';

class AuthController {
  async register(req, res) {
    try {
      const result = await AuthService.register(req.body);

      // Se o Service retornou um erro, devolve o status de erro
      if (result.error) {
        return res.status(result.status).json({ error: result.error });
      }

      // Sucesso
      return res.status(result.status).json(result.data);
    } catch (error) {
      return res.status(500).json({ error: 'Erro ao registrar usuário.' });
    }
  }

  async login(req, res) {
    try {
      const result = await AuthService.login(req.body);

      if (result.error) {
        return res.status(result.status).json({ error: result.error });
      }

      return res.status(result.status).json(result.data);
    } catch (error) {
      return res.status(500).json({ error: 'Erro ao realizar login.' });
    }
  }
}

export default new AuthController();
