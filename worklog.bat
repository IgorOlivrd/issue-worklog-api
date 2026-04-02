@echo off
REM =============================================================================
REM Script de Inicialização do Jira Worklog Timer
REM =============================================================================
REM
REM Propósito: Este script automatiza a inicialização da aplicação Jira Worklog Timer.
REM          Ele lança o servidor Python Flask em segundo plano e abre a
REM          interface web no Google Chrome para fácil acesso.
REM
REM Requisitos:
REM - Python deve estar instalado e disponível no PATH
REM - O navegador Google Chrome deve estar instalado
REM - O diretório da aplicação deve existir no caminho especificado
REM
REM Uso: Clique duas vezes neste arquivo .bat ou execute-o no prompt de comando
REM
REM =============================================================================

REM Muda para o diretório da aplicação
cd /d "C:\Users\igor.oliveira\Videos\WORKLOG_JIRA-main"

REM Inicia a aplicação Python em segundo plano
REM Isso lança o servidor Flask que serve a interface web
start "" python app.py

REM Aguarda 5 segundos para o servidor inicializar e começar a escutar na porta 5000
timeout /t 5 /nobreak > nul

REM Abre o Google Chrome e navega para a aplicação web local
REM A aplicação deve estar acessível em http://127.0.0.1:5000/
start chrome http://127.0.0.1:5000/
start chrome http://127.0.0.1:5000/
