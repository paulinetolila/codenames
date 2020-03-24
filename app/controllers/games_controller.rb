class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end

  def espions
    @game = Game.find(params[:id])
  end
end
