# 📱 InfoSuplementos

Aplicação mobile que visa facilitar a consulta de valores nutricionais de suplementos como whey protein e creatina.

Os usuários podem buscar por um suplemento específico e visualizar suas informações nutricionais de forma simples e objetiva.

Os dados são obtidos a partir de laudos disponibilizados pela Abenutri, sendo tratados e organizados para melhor compreensão.

---

## 📌 Sobre o projeto

O InfoSuplementos é um sistema composto por:

- Backend (API REST)
- Aplicação Mobile
- Banco de dados MySQL
- Ambiente Docker
- Documentação técnica

O projeto está organizado em formato monorepo, contendo backend e mobile no mesmo repositório.

### 🚧 Projeto em desenvolvimento

---

## 🛠 Tecnologias utilizadas

### Backend

- Node.js
- Express
- MySQL

### Mobile

- React Native
- Expo

---

## 📚 Documentação

- Arquitetura: `docs/architecture.md`
- Guia de contribuição: `docs/contribution-guide.md`

---

## 📁 Estrutura do Projeto

```text
infosuplementos/
│
├── backend/
├── mobile/
├── database/
├── docker/
├── docs/
├── .env
├── .env.example
├── package.json
└── README.md
```

---

## 📁 Variáveis de ambiente

O projeto utiliza variáveis de ambiente para dados sensíveis.

Crie um arquivo `.env` na raiz do projeto baseado no arquivo `.env.example`:

```env
# Database
DB_HOST=mysql
DB_PORT=3306
DB_USER=root
DB_PASSWORD=root
DB_NAME=infosuplementos

# Backend
JWT_SECRET=supersecret
API_PORT=3000

# Docker
MYSQL_ROOT_PASSWORD=root
```

---

## 📋 Pré-requisitos

Antes de iniciar o projeto, é necessário ter instalado:

- Node.js
- npm
- MySQL
- Expo CLI
- Git

---

## 📋 Instalação

1. Clone o repositório:

```bash
git clone <url-do-repositorio>
cd infosuplementos
```

2. Instale as dependências do monorepo:

```bash
npm install
```

Isso instalará as dependências do backend e do mobile.

---

## 📋 Como executar o projeto

Os seguintes passos devem ser executados no diretório raiz.

1. Subir o backend e banco com Docker

```bash
docker-compose up -d
```

2. Iniciar o mobile com Expo

```bash
npm run start:mobile
```

ou:

```bash
cd mobile
npx expo start
```

3. Visualizar no celular

- Instale o app Expo Go
- Escaneie o QR Code exibido no terminal

---

## ⚙️ Principais scripts do projeto:

- npm run dev:backend → inicia o backend
- npm run start:mobile → inicia o mobile
- npm run lint → verifica código
- npm run format → formata código

---

## 📄 Licença

Este projeto está sob a licença definida no arquivo LICENSE.
