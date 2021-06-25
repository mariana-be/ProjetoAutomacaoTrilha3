# frozen_string_literal: true

class Login
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @email_cadastrado =   EL['email_cadastrado']
    @senha_cadastrada =   EL['senha_cadastrada']
    @logar_conta =        EL['logar_conta']

    # Dados Login
    @dados_email =  DATA['email']
    @dados_senha =  DATA['senha']
  end

  def fazerLogin(_email, _senha)
    find(@email_cadastrado).set @dados_email
    find(@senha_cadastrada).set @dados_senha
  end

  def entrarConta(_logar)
    find(@logar_conta).click
    sleep 10
  end
end
