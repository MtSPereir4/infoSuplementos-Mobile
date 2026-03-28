# Guia de Contribuição

Este documento define os padrões e boas práticas para contribuição no projeto **InfoSuplementos**.
O objetivo é manter organização, consistência e facilitar o trabalho em equipe.

---

## Estrutura do Backend

O backend do projeto segue uma arquitetura em camadas inspirada no padrão MVC (Model-View-Controller), com separação de responsabilidades para facilitar manutenção, escalabilidade e organização do código.

### Estrutura de diretórios

backend/src
│
├── controllers/
├── routes/
├── services/
├── models/
├── database/
│
└── server.js

### Variáveis de ambiente

O projeto utiliza variáveis de ambiente para dados sensíveis.

Crie um arquivo `.env` dentro da pasta `backend/` baseado no arquivo `.env.example`.

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=
JWT_SECRET=
```

### Responsabilidade de cada diretório

#### controllers/

Responsável por intermediar a comunicação entre o cliente e a aplicação. Ainda, não devem conter regras de negócio complexas, apenas orquestrar o fluxo.

##### Principais responsabilidades:

- Receber requisições HTTP (req);

- Extrair e validar dados de entrada;

- Chamar os serviços (services);

- Retornar respostas HTTP (res);

#### routes/

Define os endpoints da API e conecta cada rota ao seu respectivo controller.

Exemplo:

GET /api/suplementos
POST /api/login

##### Principais responsabilidades:

- Mapear rotas → controllers

- Organizar endpoints por domínio (ex: auth, users, suplementos)

#### services/

Camada responsável pelas regras de negócio da aplicação.

##### Principais responsabilidades:

- Processamento de dados

- Validações de negócio

- Execução da lógica da aplicação

#### models/

Responsável pela interação com o banco de dados.

##### Principais responsabilidades:

- Executar queries SQL

- Realizar operações CRUD

- Abstrair o acesso aos dados

#### database/

Responsável pela configuração da conexão com o banco de dados.

##### Principais responsabilidades:

- Criar pool de conexões

- Gerenciar acesso ao banco

- Integrar variáveis de ambiente

### Dependências principais

O backend utiliza algumas bibliotecas essenciais para funcionamento da aplicação:

- **express**: Framework para criação da API e gerenciamento de rotas e requisições HTTP.

- **mysql2**: Responsável pela conexão e comunicação com o banco de dados MySQL.

- **dotenv**: Gerenciamento de variáveis de ambiente, permitindo manter dados sensíveis fora do código.

- **cors**: Permite controlar quais origens podem acessar a API (segurança entre frontend e backend).

- **helmet**: Adiciona camadas de segurança HTTP através de headers.

- **morgan**: Middleware para registro de logs das requisições, útil para debugging e monitoramento.

### Fluxo da aplicação

O fluxo padrão de uma requisição segue a seguinte ordem:

```
Cliente
  ↓
Routes
  ↓
Controller
  ↓
Service
  ↓
Model
  ↓
Database

Database
  ↓
Model
  ↓
Service
  ↓
Controller
  ↓
Response → Cliente
```

### Padrão de comunicação entre camadas

Para manter a organização da arquitetura, o fluxo de comunicação deve sempre seguir a seguinte regra:

```
Route → Controller → Service → Model
```

---

## Padrão de Branches

### Estrutura principal

```text
main        → código estável
develop     → integração de funcionalidades
```

### Tipos de branches

#### ✨ feature/\*

Para desenvolvimento de novas funcionalidades.

```bash
feature/login
feature/user-crud
feature/supplements-api
```

#### 🐛 fix/\*

Para correção de bugs.

```bash
fix/login-error
fix/token-validation
```

#### 🧹 chore/\*

Para tarefas internas e configurações.

```bash
chore/setup-backend
chore/add-eslint
```

#### 📚 docs/\*

Para criação/edição de documentos.

```bash
docs/update-readme
docs/add-api-guide
```

### 📏 Convenção de nomes

Formato padrão:

```text
tipo/nome-descritivo
```

Boas práticas:

- usar nomes curtos e claros
- utilizar kebab-case (palavras sempre em minúsculas e separadas por hífen)

Exemplos:

✔ `feature/user-auth`
✔ `fix/api-error`
✔ `chore/project-setup`

---

## Fluxo de trabalho

1. Atualizar a branch `develop`

```bash
git checkout develop
git pull
```

2. Criar uma nova branch

```bash
git checkout -b feature/nome-da-feature
```

3. Desenvolver a funcionalidade

4. Executar os scripts de formatação a partir do diretório raiz

5. Realizar commits seguindo o padrão definido

```bash
git add arquivos-alterados
git commit
```

Escreva o commit no seu editor de código padrão, salve e feche o editor

6. Enviar para o repositório remoto

```bash
git push origin feature/nome-da-feature
```

7. Abrir Pull Request (PR) para `develop`

8. Após revisão, realizar merge

9. Quando estável, `develop` é mesclada em `main`

---

## Padrão de Commits

Seguimos o padrão:

```text
tipo(escopo): descrição

corpo opcional explicando o que foi feito e por quê

rodapé opcional
```

Exemplo de commit:

```text
feat(auth): adicionar autenticação com JWT

Implementa geração de token JWT no login e middleware
de validação para rotas protegidas.

Closes #12
```

### Tipos de commits

#### ✨ feat

Nova funcionalidade

```bash
feat(auth): criar endpoint de login
```

#### 🐛 fix

Correção de bugs

```bash
fix(login): corrigir erro de autenticação
```

#### 📚 docs

Documentação

```bash
docs: atualizar README
```

#### ♻️ refactor

Refatoração sem mudança de comportamento

```bash
refactor(users): reorganizar lógica de validação
```

#### 🧹 chore

Tarefas internas/configuração

```bash
chore: configurar prettier
```

#### 🎨 style

Formatação de código

```bash
style: ajustar indentação
```

#### ⚡ perf

Melhoria de performance

```bash
perf(api): otimizar consulta
```

#### 🧪 test

Testes

```bash
test(users): adicionar testes unitários
```

#### 🔥 build

Build/dependências

```bash
build: adicionar mysql2
```

#### 👷 ci

Integração contínua

```bash
ci: configurar pipeline
```

#### ⏪ revert

Reverter commit

```bash
revert: desfazer alteração no login
```

---

## Boas práticas de commits

- Um commit deve representar uma única mudança lógica. Ex:

- Escrever mensagens curtas e objetivas

- Utilizar verbo no infinitivo

- Um commit deve representar uma única mudança

- Evitar mensagens genéricas

Exemplo:

❌ Ruim:

```text
feat: login e cadastro e alteração no banco
```

✔ Bom:

```text
feat(auth): criar endpoint de login
feat(auth): criar endpoint de cadastro
refactor(database): alterar estrutura da tabela users
```

---

## Pull Requests (PR)

Pull Requests devem descrever claramente as alterações realizadas e permitir que outros membros revisem o código antes da integração na branch `develop`.

### Antes de abrir um PR:

- Certifique-se de que o código está funcionando
- Revise seu próprio código
- Garanta que segue os padrões definidos

### Título do PR

Seguir padrão:

```text
tipo: descrição
```

Exemplo:

```text
feat: adicionar autenticação de usuários
fix: corrigir validação de senha
refactor: reorganizar camada de serviços
```

### Descrição do PR

Deve conter:

- O que foi feito
- Por que foi feito
- Como testar
