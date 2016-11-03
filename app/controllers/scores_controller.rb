class ScoresController < ApplicationController

  def show
    @game_score = Game.find_by(id: game_id).game_scores.map(&:score).sort_by(&:score).reverse
  end

  def new
    if admin?
      @score = Score.new
    else 
      redirect_to :root
    end
  end

  def create
    @score = Score.create(score_params)
    @game  = Game.find_by(id: score_params["game_id"])
    GameScore.create(game: @game, score: @score)
    redirect_to :root
  end

  private
  def score_params
    params.require(:score).permit(:game_id, :name, :score)
  end
end
