# frozen_string_literal: true

# buscarProduto
Quando('buscar e adicionar um produto no carrinho') do
  @buscar.produto
  click_link 'carrinho de compras'
end

Entao('deve finalizar o pedido indo para o Checkout') do
  @buscar.checkout
  sleep 30
end
