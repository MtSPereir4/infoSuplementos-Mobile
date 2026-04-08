# Arquitetura do projeto 

Este documento descreve a arquitetura geral do projeto InfoSuplementos, incluindo organização de diretórios, arquitetura do backend, banco de dados, Docker e fluxo da aplicação.

O objetivo desta arquitetura é garantir:

- Organização do código
- Separação de responsabilidades
- Facilidade de manutenção
- Escalabilidade
- Facilidade para trabalho em equipe
- Padronização do desenvolvimento

---

## Arquitetura geral do projeto

```text
Mobile (Expo / React Native)
        ↓
Backend API (Node.js + Express)
        ↓
Services (Regras de negócio)
        ↓
Repositories (Acesso ao banco)
        ↓
MySQL Database
```

---

## Estrutura de diretórios
```text
infosuplementos/
│
├── backend/            # API Node.js (regras de negócio e acesso ao banco)
├── mobile/             # Aplicação mobile (React Native + Expo)
├── database/           # Inits sql, migrations e seeds
├── docker/             # Arquivos de configuração Docker
├── docs/               # Documentação do projeto
├── eslint.config.js    # Arquivo de configurações do eslint
├── .env                # Variáveis de ambiente
├── .env.example        # Exemplo do variáveis de ambiente
├── .gitignore          # Arquivos ignorados pelo Git
├── .prettierrc         # Arquivo de configuração do prettier 
├── .vscode             # Diretório com configurações recomendadas para a IDE
├── README.md       
```

---

## Variáveis de ambiente

O projeto utiliza variáveis de ambiente para configuração do sistema e dados sensíveis.

O arquivo .env deve ficar na raiz do projeto.

Exemplo:
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

## Estrutura do backend

O backend segue uma arquitetura em camadas inspirada no padrão:

```text
MVC + Service + Repository Pattern
```

Essa arquitetura separa responsabilidades e melhora a organização do sistema.

### Estrutura de diretórios do backend

```text
backend/src
│
├── controllers/
├── routes/
├── services/
├── repositories/
├── models/
├── middlewares/
├── database/
├── utils/
│
└── server.js
```

### Dependências do backend

O backend utiliza algumas bibliotecas essenciais para funcionamento da aplicação:

- **express**: Framework para criação da API e gerenciamento de rotas e requisições HTTP.
- **mysql2**: Responsável pela conexão e comunicação com o banco de dados MySQL.
- **dotenv**: Gerenciamento de variáveis de ambiente, permitindo manter dados sensíveis fora do código.
- **cors**: Permite controlar quais origens podem acessar a API (segurança entre frontend e backend).
- **helmet**: Adiciona camadas de segurança HTTP através de headers.
- **morgan**: Middleware para registro de logs das requisições, útil para debugging e monitoramento.
- **nodemon** (dev): reload automático em desenvolvimento.


### Responsabilidade de cada camada

#### Routes

Responsável por definir os endpoints da API e mapear cada rota para seu controller.

##### Exemplo:
```text
POST /api/login
GET /api/supplements
POST /api/users
```

##### Exemplo de rota:
```javascript
router.post('/login', authController.login);
router.get('/supplements', supplementController.getAll);
```

#### Controllers

Responsáveis por lidar com requisições HTTP.

##### Funções do controller:

- Receber requisição (req)
- Extrair dados
- Chamar services
- Retornar resposta (res)
- Definir status HTTP

O controller não deve conter regra de negócio.

##### Exemplo:

```javascript
async function login(req, res) {
    const { email, password } = req.body;

    const user = await authService.login(email, password);

    return res.json(user);
}
```

#### Services

Camada responsável pelas regras de negócio da aplicação.

##### Funções do service:

- Validações de negócio
- Processamento de dados
- Regras do sistema
- Orquestrar repositories
- Chamar models (mappers)

##### Exemplo:

```javascript
async function login(email, password) {
    const user = await userRepository.findByEmail(email);

    if (!user) {
        throw new Error("Usuário não encontrado");
    }

    return mapUser(user);
}
```

#### Repositories

Responsáveis pelo acesso ao banco de dados.

##### Funções do repository:

- Executar comandos SQL como:
    - Queries
    - Inserts
    - Updates
    - Deletes

##### Exemplo:

```javascript
async function findByEmail(email) {
    const [rows] = await db.query(
        "SELECT * FROM users WHERE email = ?",
        [email]
    );

    return rows[0];
}
```

#### Models

Os models representam as entidades do sistema e são responsáveis por mapear os dados do banco para objetos JavaScript.

Eles funcionam como um mapper, convertendo dados do banco para o formato usado pela aplicação.

##### Exemplo:

```javascript
function mapUser(row) {
    if (!row) return null;

    return {
        id: row.id,
        name: row.name,
        email: row.email,
        createdAt: row.created_at
    };
}
```
##### Os models ajudam a:

- Padronizar dados
- Remover campos sensíveis (ex: password)
- Converter snake_case para camelCase
- Evitar repetição de código
- Desacoplar banco da API

#### Middlewares

Middlewares interceptam a requisição antes de chegar ao controller.

##### Funções dos middlewares:

- Autenticação
- Validação
- Logs
- Tratamento de erros
- Segurança

##### Estrutura:

```text
middlewares/
    auth.middleware.js
    error.middleware.js
    logger.middleware.js
    validate.middleware.js
```

##### Exemplo:

```javascript
function authMiddleware(req, res, next) {
    const token = req.headers.authorization;

    if (!token) {
        return res.status(401).json({ error: 'Token não fornecido' });
    }

    next();
}
```

#### Database (backend/src/database)

Esse diretório contém apenas a conexão com o banco de dados.

##### Exemplo:

```javascript
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

module.exports = pool;
```

#### Utils

Funções auxiliares reutilizáveis:

##### Exemplos:

```text
Hash de senha
Geração de token
Formatação de datas
Validações genéricas
```

---

### Fluxo da Aplicação (backend)

O fluxo padrão de uma requisição segue a seguinte ordem:

```text
Cliente
  ↓
Routes
  ↓
Middleware
  ↓
Controller
  ↓
Service
  ↓
Repository
  ↓
Database
  ↓
Repository
  ↓
Service
  ↓
Controller
  ↓
Response → Cliente
```

#### Fluxo resumido

```text
Route → Middleware → Controller → Service → Repository → Database
```

---

## Estrutura do mobile

O mobile é desenvolvido utilizando **Expo + React Native**, seguindo uma arquitetura baseada em separação de responsabilidades inspirada no backend.

### Estrutura de diretórios

```text
mobile/
│
├── src/
│    ├── components/   # Componentes reutilizáveis (UI)
│    ├── screens/      # Telas da aplicação
│    ├── services/     # Comunicação com a API
│    ├── hooks/        # Lógica e estado reutilizável
│    ├── utils/        # Funções auxiliares
│    ├── styles/       # Tema, cores e estilos globais
│    └── assets/       # Imagens e arquivos internos
│
├── assets/            # Assets globais do Expo (ícone, splash)
├── App.js             # Ponto de entrada da aplicação
├── index.js           # Bootstrap do Expo (não deve ser alterado)
├── package.json
└── app.json           # Configuração do app Expo
```

### Responsabilidade de cada camada

#### App.js

Ponto de entrada da aplicação.

##### Funções do App:

- Inicializar o app
- Definir a tela inicial
- Configurar navegação (futuramente)
- Configurar providers globais (Context API)

##### Exemplo:
```javascript
import HomeScreen from "./src/screens/Home";

export default function App() {
    return <HomeScreen />;
}
```

#### Screens

Representam as telas da aplicação.

##### Funções das screens:

- Renderizar interface
- Consumir hooks
- Interagir com o usuário

##### Estrutura recomendada:
```text
screens/
 ├── Home/
 │    ├── index.js
 │    └── styles.js
 │
 ├── Login/
 │    ├── index.js
 │    └── styles.js
```

##### Exemplo:
```javascript
import { View, Text } from "react-native";
import { useExample } from "../../hooks/useExample";

export default function HomeScreen() {
    const { message } = useExample();

    return (
        <View>
            <Text>{message}</Text>
        </View>
    );
}
```

#### Components

Componentes reutilizáveis de interface.

##### Funções dos components:

- Evitar repetição de código
- Padronizar UI
- Melhorar organização

##### Exemplos:

- Button
- Input
- Card
- Modal

#### Hooks

Responsáveis pela lógica da aplicação e gerenciamento de estado.

##### Funções dos hooks:

- Gerenciar estados (useState)
- Controlar efeitos (useEffect)
- Orquestrar chamadas aos services
- Reutilizar lógica entre telas

##### Exemplo:
```javascript
import { useState } from "react";
import { getMessage } from "../services/example.service";

export function useExample() {
    const [message, setMessage] = useState("");

    function fetchMessage() {
        const data = getMessage();
        setMessage(data);
    }

    return { message, fetchMessage };
}
```

#### Services

Responsáveis pela comunicação com o backend.

##### Funções dos services:

- Fazer requisições HTTP (GET, POST, PUT, DELETE)
- Centralizar chamadas à API
- Isolar detalhes de comunicação
- Padrão de nomenclatura:
    - auth.service.js
    - user.service.js
    - supplement.service.js

##### Exemplo:
```javascript
export function getMessage() {
    return "Mensagem simulada";
}
```

#### Utils

Funções auxiliares reutilizáveis.

##### Exemplos:

- Formatação de texto
- Formatação de moeda
- Validações simples

#### Styles

Responsável por centralizar estilos globais.

##### Exemplos:

- cores
- tipografia
- temas

### Fluxo da aplicação (mobile)

O fluxo interno do mobile segue a seguinte ordem:

```text
Usuário
 ↓
Screen
 ↓
Hook
 ↓
Service
 ↓
API Backend
 ↓
Resposta
 ↓
Hook (atualiza estado)
 ↓
Screen (re-renderiza UI)
```

#### Fluxo resumido
```text
Screen → Hook → Service → API
```

---

## Estrutura do Banco de Dados

Os scripts do banco não ficam dentro do backend. Eles ficam na pasta `database/`.

### Estrutura de diretórios

```text
database/
│
├── init/
├── migrations/
└── seeds/
```

### init

Scripts executados quando o banco é criado pela primeira vez.

#### Exemplo:

```text
01_create_database.sql
02_create_tables.sql
```

### migrations

Scripts para alterações futuras no banco de dados.

#### Exemplo:

```text
2026_03_30_create_users.sql
2026_04_02_add_comments.sql
```

### seeds

Scripts para inserir dados iniciais ou de teste.

#### Exemplo:

```text
users_seed.sql
supplements_seed.sql
```
