class HomeController < ApplicationController
  def index
    @article = Article.last
    @games = Game.order(:like).reverse_order
  end

  def new
    admin? ? nil : (redirect_to :root)
  end

  def create
    if admin?
      hash = {index: params["index"], about: params["about"]}
      @article = Article.create(hash)
      redirect_to :root
    end
  end

  def about
    @article = Article.last
    render 'home/about'
  end

end
