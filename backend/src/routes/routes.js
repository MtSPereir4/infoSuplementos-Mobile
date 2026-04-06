import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import morgan from 'morgan';
import dotenv from 'dotenv';

// CORREÇÃO: Removido o '/src' do caminho, pois o server.js já está dentro de src
import routes from './routes/routes.js';

dotenv.config();

const app = express();

// --- Middlewares ---
app.use(helmet()); // Segurança nos headers HTTP
app.use(morgan('dev')); // Log das requisições no terminal para debug
app.use(cors()); // Libera o acesso para o app mobile
app.use(express.json()); // Permite que a API entenda JSON no body

// --- Rotas ---
app.use(routes);

const PORT = process.env.PORT || 3333;

app.listen(PORT, () => {
  console.log(`🚀 API rodando na porta ${PORT}`);
  console.log(`🔗 Teste local: http://localhost:${PORT}/suplementos`);
});
