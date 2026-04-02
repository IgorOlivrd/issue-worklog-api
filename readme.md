# Worklog JIRA Timer

Uma aplicação web simples para registrar tempo de trabalho no JIRA. Permite iniciar e parar um timer para tarefas específicas e automaticamente registra o tempo trabalhado em issues do JIRA.

## Funcionalidades

- Validação de credenciais do JIRA
- Validação de issues do JIRA
- Timer para rastrear tempo de trabalho
- Registro automático de worklog no JIRA
- Interface web responsiva

## Pré-requisitos

- Python 3.7+
- Conta JIRA com API token
- Acesso à API do JIRA

## Instalação

1. Clone ou baixe o repositório.
2. Instale as dependências:

   ```bash
   pip install -r requirements.txt
   ```

3. Crie um arquivo `.env` na raiz do projeto com suas credenciais do JIRA:

   ```
   JIRA_BASE_URL=https://your-domain.atlassian.net
   JIRA_EMAIL=your-email@example.com
   JIRA_API_TOKEN=your-api-token
   ```

   Para obter o API token, acesse [Atlassian Account Settings](https://id.atlassian.com/manage-profile/security/api-tokens).

## Uso

1. Execute a aplicação:

   ```bash
   python app.py
   ```

   Ou use o arquivo `worklog.bat` (certifique-se de que o caminho no arquivo está correto).

2. Abra o navegador em `http://localhost:5000`.
3. Insira o código da issue do JIRA e clique em "Iniciar Timer".
4. Trabalhe na tarefa.

## Estrutura do Projeto

- `app.py`: Aplicação Flask principal, gerencia rotas e estado da aplicação.
- `engine.py`: Lógica de negócio, incluindo validação de JIRA, timer e registro de worklog.
- `config.py`: Configuração e carregamento de variáveis de ambiente.
- `index.html`: Interface web responsiva.
- `requirements.txt`: Dependências Python.
- `worklog.bat`: Script batch para executar a aplicação e abrir o navegador.

## API Endpoints

### GET /
Retorna a página principal se as credenciais estiverem configuradas e válidas.

### POST /validate-issue
Valida se uma issue do JIRA existe e retorna detalhes.

**Request Body:**
```json
{
  "issue": "EDN-123"
}
```

**Response:**
```json
{
  "valid": true,
  "key": "EDN-123",
  "summary": "Título da Issue",
  "status": "Em Andamento"
}
```

### POST /start
Inicia o timer para uma issue.

**Request Body:**
```json
{
  "issue": "EDN-123"
}
```

### POST /stop
Para o timer e registra o worklog no JIRA.

**Request Body:**
```json
{
  "comment": "Comentário opcional"
}
```

**Response:**
```json
{
  "seconds": 3600,
  "jira_status": 201
}
```

## Dependências

- Flask: Framework web para Python.
- requests: Para fazer requisições HTTP à API do JIRA.
- python-dotenv: Para carregar variáveis de ambiente do arquivo .env.

## Configuração

Certifique-se de que o arquivo `.env` contém as seguintes variáveis:

- `JIRA_BASE_URL`: URL base do seu JIRA (ex: https://your-domain.atlassian.net)
- `JIRA_EMAIL`: Seu email associado à conta JIRA
- `JIRA_API_TOKEN`: Token de API gerado no Atlassian

## Desenvolvimento

Para contribuir ou modificar:

1. Instale as dependências.
2. Execute em modo debug: `python app.py`
3. Faça alterações no código.
4. Teste as funcionalidades.

## Licença

Este projeto é de código aberto. Consulte o arquivo LICENSE para mais detalhes.
5. Clique em "Parar Timer" para registrar o tempo no JIRA.

## Estrutura do Projeto

- `app.py`: Aplicação Flask principal
- `engine.py`: Lógica para interagir com a API do JIRA
- `config.py`: Configurações e carregamento de variáveis de ambiente
- `templates/`: Templates HTML
- `requirements.txt`: Dependências Python (atualize conforme necessário)
- `worklog.bat`: Script para executar a aplicação no Windows

## Notas

- Certifique-se de que o usuário tem permissões para registrar worklog nas issues.
- O timer registra no mínimo 1 segundo, mesmo para sessões muito curtas.
- A aplicação roda em modo debug por padrão; para produção, configure adequadamente.

## Licença

Este projeto é de uso interno. Consulte os termos do JIRA para uso da API.