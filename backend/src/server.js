import 'dotenv/config';

import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import morgan from 'morgan';

const app = express();

// Configurações básicas
app.use(express.json());

// Segurança
app.use(helmet());

// CORS
app.use(cors());

// Logs
app.use(morgan('dev'));

// Rota de teste
app.get('/health', (req, res) => {
  res.status(200).json({
    status: 'OK',
    message: 'API funcionando 🚀',
  });
});

// Porta
const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
