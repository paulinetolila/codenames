class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def show
    @user = current_user
    @game = Game.find(params[:id])
  end

  def espions
    @game = Game.find(params[:id])
  end

  def home
    @games = Game.all
  end
end
