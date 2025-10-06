# 📝 To-Do List – Projeto de Estudo com Ruby on Rails

Este é um projeto de **To-Do List (lista de tarefas)** desenvolvido para fins de **aprendizado** em Ruby on Rails.
O objetivo é explorar os conceitos de **CRUD (Create, Read, Update, Delete)**, além da implementação de **testes automatizados** com **RSpec**, **FactoryBot** e **Faker**.

---

## 🚀 Funcionalidades

* ✅ Criar novas tarefas
* ✏️ Editar tarefas existentes
* 🗑️ Excluir tarefas
* 📋 Listar todas as tarefas registradas

---

## 🧰 Tecnologias utilizadas

| Categoria                   | Ferramenta                |
| --------------------------- | ------------------------- |
| Linguagem                   | Ruby                      |
| Framework                   | Ruby on Rails             |
| Banco de Dados              | MySQL |
| Testes                      | RSpec, FactoryBot, Faker  |
| Gerenciador de dependências | Bundler                   |

---

## ⚙️ Configuração do ambiente

### 1. Clonar o repositório

```bash
git clone https://github.com/mariocesarfilho/to-do-list.git
cd to-do-list
```

### 2. Instalar dependências

```bash
bundle install
```

### 3. Configurar o banco de dados

```bash
rails db:create
rails db:migrate
```

### 4. Iniciar o servidor

```bash
rails server
```

Acesse no navegador:
👉 [http://localhost:3000]

---

## 🧪 Testes automatizados

Este projeto utiliza **RSpec** para testar os modelos e as funcionalidades principais.

### Executar os testes

```bash
bundle exec rspec
```

Os testes garantem que:

* Uma tarefa é válida quando possui título, descrição e status.
* Uma tarefa é inválida quando o título está ausente.

---

## 🧠 Aprendizados

Durante o desenvolvimento, foram explorados:

* A estrutura MVC do Rails
* A criação de CRUDs completos
* O uso de **FactoryBot** e **Faker** para geração de dados fictícios
* A prática de **TDD (Test Driven Development)** com RSpec

---

## 📦 Estrutura básica do projeto

```
app/
 ├── controllers/
 │    └── tasks_controller.rb
 ├── models/
 │    └── task.rb
 ├── views/
 │    └── tasks/
 ├── spec/
 │    ├── models/
 │    │   └── task_spec.rb
 │    └── factories/
 │        └── tasks.rb
```

---

## 🚧 Próximos passos (melhorias futuras)

* [ ] Adicionar autenticação de usuários
* [ ] Implementar paginação e filtros
* [ ] Criar interface moderna com Tailwind CSS ou Bootstrap
* [ ] Deploy no Render ou Railway

---

## 📜 Licença

Projeto de estudo livre. Sinta-se à vontade para clonar, modificar e usar como base para aprendizado.

---

