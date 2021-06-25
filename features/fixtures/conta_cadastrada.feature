# language: pt
Funcionalidade: Compra em Loja Virtual Luma
Como um cliente que visualiza os produtos na loja Virtual
Deve conseguir fazer cadastro, escolher o produto, adicionar no carrinho e finalizar a compra

Contexto: Pagina Principal
Dado que acesso a pagina principal da Loja Virtual

@contaCadastrada
Cenario: Logar em uma conta cadastrada
Quando preencher os dados de login com 'email' e 'senha'
Entao deve 'logar' para entrar na conta existente
