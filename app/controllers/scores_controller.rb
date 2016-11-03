class ScoresController < ApplicationController
  def new
    @score = Score.new
  end
  def create
    @score = Score.create(score_params)
    @game  = Game.find_by(id: score_params["game_id"])
    game_score = GameScore.new(game_id: @game.id, score_id: @score.id)
    debug( game_score.save )
    redirect_to :new_score_path
  end

  private
  def score_params
    params.require(:score).permit(:game_id, :name, :score)
  end
end
