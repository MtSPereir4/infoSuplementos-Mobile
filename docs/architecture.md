# Estrutura do Projeto

```text
infoSuplementos-Mobile
│
├── backend/        # API Node.js (regras de negócio e acesso ao banco)
├── mobile/         # Aplicação mobile (React Native + Expo)
├── docs/           # Documentação do projeto
│
├── .gitignore      # Arquivos ignorados pelo Git
├── .prettierrc     # Padronização de código
├── .vscode         # Diretório com configurações recomendadas par a IDE
├── README.md       # Documentação estrutural do projeto
└── LICENSE
```

---

## Arquitetura do Backend

O backend segue uma arquitetura em camadas inspirada no padrão **MVC (Model-View-Controller)**, com separação de responsabilidades para facilitar manutenção, escalabilidade e trabalho em equipe.

### Estrutura interna

```text
backend/src
│
├── controllers/    # Camada de comunicação req/res (HTTP)
├── routes/         # Definição das rotas da API
├── services/       # Regras de negócio
├── models/         # Manipulação de dados (interação com o banco de dados)
├── database/       # Configuração do banco de dados
│
└── server.js       # Ponto de entrada da aplicação
```

---

### Responsabilidade de cada camada

#### controllers/

Responsável por lidar com as requisições HTTP.

- Recebe dados do cliente (`req`)
- Chama os serviços
- Retorna respostas (`res`)

---

#### services/

Contém a lógica de negócio da aplicação.

- Validações
- Processamentos
- Regras do sistema

---

#### models/

Responsável pela comunicação com o banco de dados.

- Consultas SQL
- CRUD
- Manipulação de dados

---

#### database/

Configuração da conexão com o banco de dados.

- Pool de conexões
- Integração com variáveis de ambiente

---

#### routes/

Define os endpoints da API. Deve conectar as rotas (endpoints) aos controllers.

Exemplo:

```http
GET /api/users
POST /api/supplements
```

---

#### server.js

Ponto inicial da aplicação.

Responsável por:

- Criar o servidor
- Configurar middlewares
- Registrar rotas
- Iniciar a API

---

## Fluxo da aplicação

```text
Cliente → Routes → Controller → Service → Model → Database
                                              ↓
Cliente ← Response ← Controller ← Service ← Model
```

## Variáveis de ambiente

O projeto utiliza variáveis de ambiente para dados sensíveis.

Crie um arquivo `.env` na pasta `backend/` baseado no exemplo:

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=
JWT_SECRET=
```
