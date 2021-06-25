class Cadastro
    include Capybara::DSL
    include RSpec::Matchers
  
    def initialize
      @inserir_nome =       EL['inserir_nome']
      @inserir_sobrenome =  EL['inserir_sobrenome']
      @inserir_email =      EL['inserir_email']
      @inserir_senha =      EL['inserir_senha']
      @repetir_senha =      EL['repetir_senha']
      @criar_conta =        EL['criar_conta']
    end
  
    def cadastrar_conta
      # Faker
      @password = Faker::Internet.password
  
      find(@inserir_nome).set Faker::Name.first_name
      find(@inserir_sobrenome).set Faker::Name.last_name
      find(@inserir_email).set Faker::Internet.email
      find(@inserir_senha).set @password
      find(@repetir_senha).set @password
    end
  
    def criar_conta
      find(@criar_conta).click
    end
  end