# frozen_string_literal: true

# criarCadastro
Dado('que acesso a pagina principal da Loja Virtual para cadastro') do
  url = DATA['cadastro_loja']
  visit(url)
end

Quando('realizar a criacao de uma conta na pagina de cadastro') do
  click_link 'Create an Account'
end

Quando('preencher as informacoes para fazer o novo cadastro') do
  @cadastro.cadastrar_conta
end

Entao('clicar em criar conta') do
  @cadastro.criar_conta
end

Entao('deve ser visualizado a mensagem que o cadastro foi realizado com sucesso') do
  expect(page).to have_text 'Thank you for registering with Main Website Store.'
  sleep 5
end
