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
PORT=3333
DB_HOST=localhost
DB_PORT=3307
DB_USER=app_user
DB_PASS=app_pass
DB_NAME=info_suplementos
JWT_SECRET=supersecret
```

No Docker, o backend usa `DB_HOST=mysql`, pois se comunica com o serviço MySQL pela rede interna do Compose.
Para acessar o MySQL pelo host, use a porta `3307`; dentro do Docker ele continua na porta `3306`.

---

## 📋 Pré-requisitos

Antes de iniciar o projeto, é necessário ter instalado:

- Node.js
- npm
- Docker e Docker Compose
- Expo Go no celular, ou Android Studio para emulador
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

1. Subir o backend, banco e phpMyAdmin com Docker

```bash
docker-compose up -d
```

2. Iniciar o mobile com Expo

```bash
npm run start:mobile
```

Esse comando detecta o IP LAN atual da máquina e grava `mobile/.env.local` automaticamente com `EXPO_PUBLIC_API_URL=http://SEU_IP_ATUAL:3333`.
Se a detecção escolher a interface errada, informe o IP manualmente ao iniciar:

```bash
cd mobile
API_HOST=SEU_IP_LOCAL npm run start:lan
```

ou, para forçar o modo LAN recomendado para Expo Go:

```bash
npm run start:mobile:lan
```

Evite iniciar com `npx expo start` diretamente, pois esse comando não executa o script que atualiza o IP da API.

3. Visualizar no celular

- Instale o app Expo Go
- Escaneie o QR Code exibido no terminal
- Em dispositivo físico, o app tenta usar automaticamente o IP do servidor Expo para acessar `http://<ip-da-sua-maquina>:3333`.
- Se aparecer `Network request failed`, abra `http://SEU_IP_LOCAL:3333/health` no navegador do celular. Se não carregar, o celular não está alcançando o backend pela rede.
- Se necessário, crie `mobile/.env` a partir de `mobile/.env.example` e defina `EXPO_PUBLIC_API_URL=http://SEU_IP_LOCAL:3333` antes de iniciar o Expo. Isso só é necessário quando a detecção automática não funcionar.
- Prefira iniciar o Expo em modo LAN, com celular e computador na mesma rede Wi-Fi. O modo Tunnel não expõe automaticamente sua API local na porta `3333`.
- No emulador Android, o app pode acessar a máquina host por `http://10.0.2.2:3333`.

---

## ⚙️ Principais scripts do projeto:

- npm run dev:backend → inicia o backend
- npm run start:mobile → inicia o mobile
- npm run start:mobile:lan → inicia o mobile forçando modo LAN
- npm run lint → verifica código
- npm run format → formata código

---

## 📄 Licença

Este projeto está sob a licença definida no arquivo LICENSE.
