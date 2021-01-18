#language: pt
@baseTest
@movies
Funcionalidade: Manter dados dos filmes através da API
Como um usuário do sistema
Eu quero realizar as requisições da API
A fim de consultar as informações

Esquema do Cenário: Consultar detalhes de um filme por ID
    Dado o <id> do filme
    Quando realizar uma requisição para consultar o filme
    Então o código do resposta é igual a <cod>

    Exemplos:
        | id     | cod |
        | 464052 | 200 |
        | 508442 | 200 |
        | 675327 | 200 |
        | 123456 | 404 |

Esquema do Cenário: Adicionar avalição de um filme sem permissão
    Dado o <id> do filme e a <nota>
    Quando realizar a requisição para avaliar o filme
    Então o código do resposta é igual a <cod>


        Exemplos:
        | id     | nota | cod | 
        | 464052 | 0.5  | 401 |
        | 508442 | 8.1  | 401 |
        | 675327 | 0.1  | 401 |
        | 123456 | 9.9  | 401 |
      

Cenário: Validar contrato da requisição de detalhes
    Dado a rota da API de detalhes de um filme com o id 464052
    Quando realizar uma requisição do tipo GET 
    Então a API irá retorna os dados do filme com o cod 200

    

    