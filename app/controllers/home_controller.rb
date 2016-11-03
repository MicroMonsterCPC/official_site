class HomeController < ApplicationController
  def index
    @games = Game.order(:like).reverse_order
  end

  def about
    render 'home/about'
  end

end
