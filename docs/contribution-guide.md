# Guia de Contribuição

Este documento define os padrões e boas práticas para contribuição no projeto **InfoSuplementos**.
O objetivo é manter organização, consistência e facilitar o trabalho em equipe.

---

## 🛠️ Scripts do projeto

O projeto utiliza ESLint para padronização de código e Prettier para formatação automática.

Todos os scripts devem ser executados a partir do diretório raiz do projeto.

### Scripts disponíveis:

- Executa o ESLint e verifica problemas de código:

```bash
npm run lint
```

- Executa o ESLint e corrige problemas automaticamente quando possível:

```bash
npm run lint:fix
```

- Formata todos os arquivos do projeto utilizando Prettier:

```bash
npm run format
```

- Verifica se os arquivos estão formatados corretamente:

```bash
npm run format:check
```

- Inicia o backend em modo desenvolvimento com nodemon:

```bash
npm run dev:backend
```

- Inicia o backend em modo produção:

```bash
npm run start:backend
```

- Inicia o aplicativo mobile:

```bash
npm run start:mobile
```

---

## 🌿 Padrão de Branches

### Estrutura principal

```text
main        → código estável
develop     → integração de funcionalidades
```

### Tipos de branches

#### ✨ feature/\*

Para desenvolvimento de novas funcionalidades.

```text
feature/login
feature/user-crud
feature/supplements-api
```

#### 🐛 fix/\*

Para correção de bugs.

```text
fix/login-error
fix/token-validation
```

#### 🧹 chore/\*

Para tarefas internas e configurações.

```text
chore/setup-backend
chore/add-eslint
```

#### 📚 docs/\*

Para criação/edição de documentos.

```text
docs/update-readme
docs/add-api-guide
```

#### ♻️ refactor/\*

Para refatorações (sem mudança de comportamento).

```text
refactor/auth-service
refactor/user-controller
```

#### ⚡ perf/\*

Para melhorias de performance.

```text
perf/query-optimization
perf/cache-users
```

#### 🧪 test/\*

Para criação ou ajuste de testes.

```text
test/login-service
test/user-routes
```

#### 🎨 style/\*

Para ajustes de formatação/estilo (sem impacto funcional).

```
style/code-format
style/eslint-fixes
```

#### 🚨 hotfix/\*

Para correções urgentes em produção.

```text
hotfix/payment-crash
hotfix/security-patch
```

#### 🚀 release/\*

Para preparação de versões.

```text
release/v1.0.0
release/v1.1.0
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

## 📝 Padrão de Commits

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

```text
feat(auth): criar endpoint de login
```

#### 🐛 fix

Correção de bugs

```text
fix(login): corrigir erro de autenticação
```

#### 📚 docs

Documentação

```text
docs: atualizar README
```

#### ♻️ refactor

Refatoração sem mudança de comportamento

```text
refactor(users): reorganizar lógica de validação
```

#### 🧹 chore

Tarefas internas/configuração

```text
chore: configurar prettier
```

#### 🎨 style

Formatação de código

```text
style: ajustar indentação
```

#### ⚡ perf

Melhoria de performance

```text
perf(api): otimizar consulta
```

#### 🧪 test

Testes

```text
test(users): adicionar testes unitários
```

#### 🔥 build

Build/dependências

```text
build: adicionar mysql2
```

#### 👷 ci

Integração contínua

```text
ci: configurar pipeline
```

#### ⏪ revert

Reverter commit

```text
revert: desfazer alteração no login
```

---

## ✅ Boas práticas de commits

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

## 🔀 Pull Requests (PR)

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

---

## 🔄 Fluxo de trabalho

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
