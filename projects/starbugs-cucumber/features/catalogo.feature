#language: pt

Funcionalidade: Catálago de cafés
    Como um usuario do site, quero ver o Catálago de Cafés na pagina principal
    Para que eu possa escolher e saber mais sobre os cafés disponíveis

Cenario: Acessar o catálogo de cafés na pagina principal

    Quando eu acessar a pagina principal da Starbugs
    Então eu devo ver uma lista de cafés disponíveis
    

Cenario: Iniciar a compra de um café

    Dado que eu estou na pagina principal da Starbugs
        E que desejo comprar o seguinte produto:
         | name     | Expresso Gelado |
         | price    | R$ 9,99        |
         | delivery | R$ 10,00        |

    Quando inicio a compra desse item
    Entao devo ver a página de Checkout com os detalhes do produto
        E que o valor total da compra é "R$ 19,99"

Cenario: Café indisponivel

    Dado que eu estou na pagina principal da Starbugs
    E que desejo comprar o seguinte produto:
         | name     | Expresso Cremoso |
    Quando inicio a compra desse item
    Então devo ver um pop-up informando que o café não está disponível