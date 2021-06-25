# frozen_string_literal: true

# contaCadastrada
Dado('que acesso a pagina principal da Loja Virtual') do
  url = DATA['loja_virtual']
  visit(url)
end

Quando('preencher os dados de login com {string} e {string}') do |email, senha|
  click_link('Entrar')
  @login.fazerLogin(email, senha)
end

Entao('deve {string} para entrar na conta existente') do |logar|
  @login.entrarConta(logar)
  sleep 5
end
