class GamesController < ApplicationController
  def index
    render json: Game.eligible_games
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: { your_game: game_url(@game, { token: @game.initiator_id}) }
    else
      render json: @game.errors
    end
  end

  private
  def game_params
    params.require(:game).permit(:initiator_id, :name)
  end
end
