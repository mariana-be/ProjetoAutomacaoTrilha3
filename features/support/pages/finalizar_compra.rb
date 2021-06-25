# frozen_string_literal: true

class Finalizar
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @novo_endereço =      EL['novo_endereço']
    @endereço_rua =       EL['endereço_rua']
    @endereço_país =      EL['endereço_país']
    @endereço_estado =    EL['endereço_estado']
    @endereço_cidade =    EL['endereço_cidade']
    @endereço_cep =       EL['endereço_cep']
    @telefone =           EL['telefone']
    @salvar_endereço =    EL['salvar_endereço']
    @selecionar_frete =   EL['selecionar_frete']
    @página_pagamento =   EL['página_pagamento']
    @finalizar_compra =   EL['finalizar_compra']
  end

  def cadastrar_endereco
    # Faker
    find(@novo_endereço).click
    find(@endereço_rua).set Faker::Address.street_name
    find(@endereço_país).click
    find(@endereço_estado).click
    find(@endereço_cidade).set Faker::Address.city
    find(@endereço_cep).set Faker::Address.postcode
    find(@telefone).set Faker::PhoneNumber.phone_number
    find(@salvar_endereço).click
    find(@selecionar_frete).click
    find(@página_pagamento).click
  end

  def compra_efetuada
    find(@finalizar_compra).click
  end
end
