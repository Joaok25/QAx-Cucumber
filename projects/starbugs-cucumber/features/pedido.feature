#language: pt

Funcionalidade: Pedidos

    Como um usaurio do site Starbugs, eu quero selecionar e comprar cafés
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento

    Cenário: Comprar bem sucedida

        Dado que eu estou na pagina principal da Starbugs
            E que iniciei a compra do item: "Expresso Tradicional" 
        Quando faço a busca do seguinte CEP: "85070160"
            E informo os demais dados de endereço:
            | number  | 126    |
            | details | apto 15|
            E escolho a forma de pagamento: "Cartão de Débito"
            E por fim finalizo a compra
        Então sou redirecionado para a página de confirmação do Pedidos
            E deve ser informando o seguinte prazo de entrega: "20 min - 30 min" 

