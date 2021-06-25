# language: pt
Funcionalidade: Compra em Loja Virtual Luma
Como um cliente que visualiza os produtos na loja Virtual
Deve conseguir fazer cadastro, escolher o produto, adicionar no carrinho e finalizar a compra


@criarCadastro
Cenario: Criar Cadastro de Usuario

Dado que acesso a pagina principal da Loja Virtual para cadastro
Quando realizar a criacao de uma conta na pagina de cadastro
E preencher as informacoes para fazer o novo cadastro
E clicar em criar conta
Entao deve ser visualizado a mensagem que o cadastro foi realizado com sucesso
