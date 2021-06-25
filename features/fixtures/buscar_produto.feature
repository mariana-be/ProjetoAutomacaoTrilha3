# language: pt
Funcionalidade: Compra em Loja Virtual Luma
Como um cliente que visualiza os produtos na loja Virtual
Deve conseguir fazer cadastro, escolher o produto, adicionar no carrinho e finalizar a compra

Contexto: Pagina Principal
Dado que acesso a pagina principal da Loja Virtual

@buscarProduto
Cenario: Buscar e Adicionar produto no carrinho
Quando buscar e adicionar um produto no carrinho
Entao deve finalizar o pedido indo para o Checkout