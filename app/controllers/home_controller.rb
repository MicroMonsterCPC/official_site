class HomeController < ApplicationController
  def index
    @games = Game.order(:like)
  end

  def about
    render 'home/about'
  end

end
