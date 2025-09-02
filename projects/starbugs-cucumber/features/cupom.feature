#language:pt

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário da Starbugs: Eu quero poder aplicar cupons de desconto na pagina de Checkout
    Para que eu possa obter reduções no preço do produto


    Cenário: Aplicar desconto de 20%

    Dado que iniciei a compra do item 
       | name     | Café com Leite   |
       | price    | R$ 19,99         |
       | delivery | R$ 10,00         |
       | total    | R$ 29,99         | 
    Quando aplico o seguinte cupom: "MEUCAFE"
    Então o valor final da compra deve ser atualizado para: "R$ 25,99"



    Cenário: Cupom Expirado.

    Dado que iniciei a compra do item 
       | name     | Café com Leite   |
       | price    | R$ 19,99         |
       | delivery | R$ 10,00         |
       | total    | R$ 29,99         | 

    Quando aplico o seguinte cupom: "PROMO20"
    Então devo ver a notificação "Cupom expirado!"
        E o valor final da compra deve permanecer o mesmo



    Cenário: Cupom Inválido

    Dado que iniciei a compra do item 
       | name     | Café com Leite   |
       | price    | R$ 19,99         |
       | delivery | R$ 10,00         |
       | total    | R$ 29,99         | 
    Quando aplico o seguinte cupom: "PROMO100"
    Então devo ver a notificação "Cupom inválido!"
        E o valor final da compra deve permanecer o mesmo
