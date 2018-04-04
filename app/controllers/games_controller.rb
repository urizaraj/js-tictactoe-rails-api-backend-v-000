class GamesController < ApplicationController
  def create
    game = Game.create(state: Array.new(9).fill(''))
    render json:
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def update
    game = Game.find(params[:id])
    game.update(state: params[:state])
    render json: game
  end

  def index
  end
end
