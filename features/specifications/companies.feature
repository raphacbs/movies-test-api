#language: pt
@baseTest
@companies
Funcionalidade: Manter dados das companias através da API
Como um usuário do sistema
Eu quero realizar as requisições da API
A fim de consultar as informações

Esquema do Cenário: Consultar detalhes de uma compania por ID
    Dado o <id> da compania
    Quando realizar uma requisição para consultar
    Então o código é igual a <cod>
    Exemplos:
        | id     | cod |
        | 9993   | 200 |
        | 114152 | 200 |
        | 507    | 200 |