# language: pt
Funcionalidade: Compra em Loja Virtual Luma
Como um cliente que visualiza os produtos na loja Virtual
Deve conseguir fazer cadastro, escolher o produto, adicionar no carrinho e finalizar a compra

@finalizarCompra
Cenario: Dados do Checkout para finalizar a compra
Dado que acesso a pagina principal da Loja Virtual com o login efetuado
Quando for realizado o checkout da compra
Entao deve preencher os dados para finalizar a compra
E mostrar que a compra foi efetuada com sucesso

