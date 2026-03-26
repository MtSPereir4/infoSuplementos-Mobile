# InfoSuplementos

Aplicação mobile que visa facilitar a consulta de valores nutricionais de suplementos como whey e creatina.

Os usuários podem buscar por um suplemento específico e visualizar suas informações nutricionais de forma simples e objetiva.

Os dados são obtidos a partir de laudos disponibilizados pela Abenutri, sendo tratados e organizados para melhor compreensão.

---

## Documentação

- Arquitetura: `docs/architecture.md`
- Guia de contribuição: `docs/contribution-guide.md`

---

## Tecnologias utilizadas

### Backend

- Node.js
- Express
- MySQL

### Mobile

- React Native
- Expo

---

## Estrutura do Projeto

```text
infoSuplementos-Mobile
│
├── backend/        # API Node.js (regras de negócio e acesso ao banco)
├── mobile/         # Aplicação mobile (React Native + Expo)
├── docs/           # Documentação do projeto
└── .env.example    # Exemplo de variáveis de ambiente
```

---

## Variáveis de ambiente

O projeto utiliza variáveis de ambiente para dados sensíveis.

Crie um arquivo `.env` na pasta `backend/` baseado no arquivo .env.example:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=
JWT_SECRET=
```

---

## Como iniciar o projeto

### Backend

```bash
cd backend
npm install
npm run dev
```

Servidor disponível em:

```text
http://localhost:3000
```

---

### Mobile

```bash
cd mobile
npx expo start
```

---

## Licença

Este projeto está sob a licença definida no arquivo LICENSE.
