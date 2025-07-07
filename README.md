# Python Project Template

Um template moderno, robusto e opinativo para iniciar novos projetos em Python.
Este projeto vem pré-configurado com um conjunto de ferramentas para gestão de
dependências, formatação de código, linting, análise estática e testes para garantir
um código de alta qualidade e um fluxo de desenvolvimento produtivo.

## ✨ Funcionalidades

- **Framework Web**: [FastAPI](https://fastapi.tiangolo.com/) para construir APIs
  de alta performance.
- **Gestão de Dependências**: [uv](https://github.com/astral-sh/uv) para uma instalação
  e resolução de pacotes extremamente rápida.
- **Qualidade de Código**:

  - [Ruff](https://github.com/astral-sh/ruff) como linter e formatador de código,
    tudo-em-um e extremamente rápido.
  - [pyrefly](https://pyrefly.org/) para verificação estática de tipos.
  - [pre-commit](https://pre-commit.com/) para executar verificações de qualidade
    antes de cada commit.
  - [deptry](https://github.com/fpgmaas/deptry) para verificar dependências obsoletas
    e em falta.
  - [pip-audit](https://pypi.org/project/pip-audit/) Uma ferramenta para
    auditar ambientes Python em busca de vulnerabilidades conhecidas.

- **Testes**:
  - [pytest](https://docs.pytest.org/) para escrever e executar testes de forma
    eficiente.
- **Ambiente de Desenvolvimento**:
  - [Task](https://taskfile.dev/) para aliases de comandos simples e fáceis de usar,
    simplificando as tarefas do dia a dia.

## 🚀 Começar

Siga estas instruções para colocar o ambiente de desenvolvimento a postos.

### Pré-requisitos

- Python 3.9+
- [uv](https://docs.astral.sh/uv/getting-started/installation/) um gerenciador de
  pacote e projeto em python
- [Task](https://taskfile.dev/installation/) (um executor de tarefas moderno)

### Instalação

1. **Clone o repositório:**

   ```sh
   git clone <URL_DO_SEU_REPOSITORIO>
   cd <NOME_DO_DIRETORIO>
   ```

2. **Instale o ambiente e as dependências:**
   Este comando irá utilizar o `uv` para criar um ambiente virtual (`.venv`), instalar
   todas as dependências de produção e desenvolvimento, e configurar os hooks de
   `pre-commit`.

   ```sh
   task install
   ```

### Configuração do VS Code

Após a instalação, é crucial configurar o seu VS Code para utilizar o interpretador
Python do ambiente virtual recém-criado (`.venv`) para que o linting, a formatação
e a depuração funcionem corretamente.

1. Abra a Paleta de Comandos: `Ctrl+Shift+P` (ou `Cmd+Shift+P` no macOS).
2. Digite e selecione a opção **Python: Select Interpreter**.
3. Escolha o interpretador que contém `.venv` no caminho (ex: `./.venv/bin/python`).
   O VS Code geralmente sugere este interpretador automaticamente como recomendado.

#### ambiente de desenvolvimento python

Para acessar o ambiente de desenvolvimento:

1. execute o comando

   ```sh
   source .venv/bin/activate
   ```

2. para sair do ambiente de desenvolvimento

   ```sh
   deactivate
   ```

## 🛠️ Utilização

Este projeto utiliza o `Taskfile.yml` para fornecer comandos simples para tarefas
comuns de desenvolvimento.

### Comandos Principais

- `task dev`
  Executa a aplicação em **modo de desenvolvimento** com hot-reload. A API estará
  disponível em `http://127.0.0.1:8000`.

- `task prod`
  Executa a aplicação em **modo de produção**.

- `task check`
  Executa todas as **ferramentas de qualidade de código**, incluindo verificações
  de lockfile, pre-commit hooks, pyrefly e deptry.

- `task test`
  Executa a **suite de testes** com `pytest`.

- `task build`
  **Cria os pacotes de distribuição** (wheel) do projeto na pasta `dist/`.

- `task help`
  Mostra a lista de **todos os comandos disponíveis** e as suas descrições.

Para ver todos os comandos disponíveis, pode inspecionar o ficheiro `Taskfile.yml`
ou correr `task --list-all`.
