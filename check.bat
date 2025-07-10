@echo off
REM Script para executar as verificações de qualidade de código no Windows

REM Ativa o ambiente virtual
call .venv\Scripts\activate.bat

REM Verifica se a ativação do ambiente virtual foi bem-sucedida
if not defined VIRTUAL_ENV (
    echo Erro: O ambiente virtual nao pode ser ativado.
    goto :eof
)

echo Executando verificacoes do pre-commit...
pre-commit run -a
if %errorlevel% neq 0 (
    echo Falha nas verificacoes do pre-commit!
    goto :eof
)

echo Executando verificacoes do pyrefly...
pyrefly check
if %errorlevel% neq 0 (
    echo Falha nas verificacoes do pyrefly!
    goto :eof
)

echo Executando verificacoes do deptry...
deptry app
if %errorlevel% neq 0 (
    echo Falha nas verificacoes do deptry!
    goto :eof
)

echo Executando verificacoes do pip-audit...
pip-audit
if %errorlevel% neq 0 (
    echo Falha nas verificacoes do pip-audit!
    goto :eof
)

echo Todas as verificacoes concluidas com sucesso.

REM Desativa o ambiente virtual (opcional, mas boa pratica)
deactivate

:eof
