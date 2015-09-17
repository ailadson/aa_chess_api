class GamesController < ApplicationController
  def index
    render json: Game.eligible_games
  end
end
