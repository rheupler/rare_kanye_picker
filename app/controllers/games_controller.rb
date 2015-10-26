class GamesController < ApplicationController
  def index
    @game = Game.new
    @games = Game.all
  end

  # def new
  #   @game = Game.new
  # end

  def create
    @game = Game.new(:player => "AAA")
    if @game.save
      redirect_to game_path(@game)
    else
      flash[:notice] = "error"
      render :index
    end
  end

  # private
  # def game_params
  #   params.require(:game).permit(:player =>)
  # end
end
