import { Router } from 'express';
const routes = Router();

import SupplementController from '../controllers/SupplementController.js';
import AuthController from '../controllers/AuthController.js';
import FavoriteController from '../controllers/FavoriteController.js';
import auth from '../middlewares/auth.js';

// Rotas de Autenticação
routes.post('/auth/register', AuthController.register);
routes.post('/auth/login', AuthController.login);

// Rotas de Suplementos (Públicas para o MVP)
routes.get('/health', (req, res) => {
  return res.json({ status: 'UP', timestamp: new Date() });
});
routes.get('/supplements', SupplementController.index);
routes.get('/supplements/:id', SupplementController.getById);

// Rotas autenticadas
routes.post('/favorites/:supplementId', auth, FavoriteController.add);

export default routes;
