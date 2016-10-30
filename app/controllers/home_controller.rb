class HomeController < ApplicationController
  def index
    @games = Game.all
  end

  def about
    render 'home/about'
  end

end
