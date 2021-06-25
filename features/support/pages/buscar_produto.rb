# frozen_string_literal: true

class Buscar
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    #@buscar_produto = EL['buscar_produto']
    @selecionar_imagem =   EL['selecionar_imagem']
    @escolher_tamanho =    EL['escolher_tamanho']
    @escolher_cor =        EL['escolher_cor']
    @escolher_quantidade = EL['escolher_quantidade']
    @adicionar_carrinho =  EL['adicionar_carrinho']
    @avançar_checkout =    EL['avançar_checkout']
  end

  def produto
    #find(@buscar_produto).set("Layla Tee \n")
    find(@selecionar_imagem).click
    find(@escolher_tamanho).click
    find(@escolher_cor).click
    find(@escolher_quantidade).set '3'
    find(@adicionar_carrinho).click
  end

  def checkout
    find(@avançar_checkout).click
  end
end
