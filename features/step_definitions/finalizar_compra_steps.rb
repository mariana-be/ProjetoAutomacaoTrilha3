# frozen_string_literal: true

# finalizarCompra
Dado('que acesso a pagina principal da Loja Virtual com o login efetuado') do
  steps %(
      Dado que acesso a pagina principal da Loja Virtual
      Quando preencher os dados de login com 'email' e 'senha'
      Entao deve 'logar' para entrar na conta existente
    )
end

Quando('for realizado o checkout da compra') do
  steps %(
      Quando buscar e adicionar um produto no carrinho
      Entao deve finalizar o pedido indo para o Checkout
    )
end

Entao('deve preencher os dados para finalizar a compra') do
  @finalizar.cadastrar_endereco
  sleep 5
end

Entao('mostrar que a compra foi efetuada com sucesso') do
  @finalizar.compra_efetuada
  expect(page).to have_text 'Obrigado por sua compra!'
  sleep 5
end
