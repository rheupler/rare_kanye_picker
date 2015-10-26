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

  def show
    @game = Game.find(params[:id])
    offset1 = rand(Image.count)
    offset2 = rand(Image.count)
    @image1 = Image.offset(offset1).first
    @image2 = Image.offset(offset2).first
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    score = params[:score].to_i
    new_score = @game.score += score
    @game.update(score: new_score)
    if @game.save
      redirect_to game_path(@game)
    # else
    #   flash[:alert] = "error"
    #   redirect game_path(@game)
    end
  end

  # private
  # def game_params
  #   params.require(:game).permit(:player =>)
  # end
end
