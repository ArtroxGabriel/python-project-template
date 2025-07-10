# Python Project Template

Uma template de projeto FastAPI, agora utilizando `venv` e `pip` para gerenciamento
de dependências e execução manual.

## Pré-requisitos

- **Python 3.9+**: Certifique-se de ter uma versão compatível do Python instalada.
  Você pode verificar sua versão com:

  ```bash
  python --version
  ```

## Instalação e Configuração

Siga estes passos para configurar o ambiente de desenvolvimento:

1. **Clone o Repositório**:

   ```sh
   git clone [https://github.com/artroxgabriel/python-project-template.git](https://github.com/artroxgabriel/python-project-template.git)
   cd python-project-template
   ```

2. **Crie e Ative o Ambiente Virtual**:
   Recomendamos o uso de um ambiente virtual para isolar as dependências do projeto.
   - **Crie o ambiente virtual**:

     ```bash
     python -m venv .venv
     ```

   - **Ative o ambiente virtual**:
     - **Linux / macOS**:

       ```sh
       source .venv/bin/activate
       ```

     - **Windows (Prompt de Comando)**:

       ```sh
       .\.venv\Scripts\activate.bat
       ```

     - **Windows (PowerShell)**:

       ```powershell
       .\.venv\Scripts\Activate.ps1
       ```

   - Seu terminal deve mostrar `(.venv)` no prompt, indicando que o ambiente está
     ativo.

3. **Instale as Dependências**:
   Primeiro, atualize o `pip` para garantir a versão mais recente:

   ```sh
   pip install --upgrade pip
   ```

   Em seguida, instale as dependências de desenvolvimento e produção listadas em
   `requirements-dev.txt`:

   ```sh
   pip install -r requirements-dev.txt
   ```

   (Se você precisar apenas das dependências de produção para um ambiente de deployment,
   use `pip install -r requirements.txt`.)

4. **Instale os Hooks de Pré-commit**:
   Os hooks de pré-commit garantem que o código siga os padrões definidos antes de
   cada commit.

   ```sh
   pre-commit install
   ```

## Ambiente de Desenvolvimento

Para trabalhar no projeto, sempre ative o ambiente virtual conforme o passo 2 da
instalação.

- Para desativar o ambiente virtual a qualquer momento:

  ```sh
  deactivate
  ```

## Utilização

Aqui estão os comandos para executar as tarefas comuns do projeto:

### 1. Executar a Aplicação em Modo de Desenvolvimento

Isso iniciará o servidor FastAPI com recarregamento automático em caso de alterações
no código.

```sh
# Certifique-se de que o ambiente virtual está ativo
fastapi dev
```

O servidor estará disponível em [http://127.0.0.1:8000](http://127.0.0.1:8000)

### 2. Executar a Aplicação em Modo de Produção

Isso iniciará o servidor Uvicorn com 4 workers.

```sh
# Certifique-se de que o ambiente virtual está ativo
uvicorn app.main:app --host 0.0.0.0 --port 8000 --workers 4
```

### 3. Executar a Aplicação em Modo de Produção

Execute essas ferramentas para verificar a qualidade e segurança do seu código.

```sh
# Certifique-se de que o ambiente virtual está ativo
check.bat
```

### 4. Executar a Aplicação em Modo de Produção

Execute os testes unitários e de integração do projeto.

```sh
# Certifique-se de que o ambiente virtual está ativo
pytest --doctest-modules .
```

### 5. Construir o Pacote (Wheel e sdist)

Isso criará os arquivos de distribuição do seu pacote (`.whl` e `.tar.gz`) na pasta
`dist/.`

```sh
# Primeiro, limpe os artefatos de build antigos
python -c "import shutil; import os; shutil.rmtree('dist') if os.path.exists('dist' )else None"

# Em seguida, construa o pacote
python -m build --wheel --sdist
```
