class ScoresController < ApplicationController

  def show
    @game = Game.find_by(id: params["id"].to_i)
    game_score = @game.game_scores.map(&:score).sort_by(&:score).reverse
    @game_score = Kaminari.paginate_array(game_score).page(params[:page]).per(50)
  end

  def new
    if admin?
      @score = Score.new
    else 
      redirect_to :root
    end
  end

  def score_search
    word = params["q"]
    @game = Game.find_by(id: params["id"].to_i)
    @game_score  = Score.where(game_id: @game.id, name: word).page(params[:page]).per(50) if word.present?
    render 'scores/show'
  end

  def create
    if admin?
      game_id, name, score = params["game_id"]["game_id"].to_i, params["score"]["name"], params["score"]["score"]
      @score = Score.create(game_id: game_id, name: name, score: score)
      @game  = Game.find_by(id: game_id)
      GameScore.create(game: @game, score: @score)
      redirect_to :new_score
    end
  end

  private
  def score_params
    params.require(:game_id, :score).permit(:game_id, :name, :score)
  end
end
