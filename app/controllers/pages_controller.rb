class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def products
    @title = "Produtos"
  end

  def accessories
    @title = "Acessorios"
  end

  def contact
    @title = "Contato"
  end

  def unifloor
    @title = "Sobre a UniFloor"
  end
end
