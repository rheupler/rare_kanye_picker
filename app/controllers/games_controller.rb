class GamesController < ApplicationController
  def index
    @game = Game.new
    @games = Game.all
    @counter = 1
  end


  # def new
  #   @game = Game.new
  # end

  def create
    @game = Game.new(:player => "AAA")
    # image_id = params[:image_id].to_i
    # @image = @game.images.new(image_id)
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
    @images = Image.all
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if params[:turn] && params[:score] && params[:image_id]
      image = Image.find(params[:image_id])
      turn = params[:turn].to_i
      score = params[:score].to_i
      new_turn = @game.turns += turn
      new_score = @game.score += score
      @game.update(score: new_score, turns: new_turn)
      @game.images.push(image)
      if @game.save
        sleep 2
        respond_to do |format|
          format.html { redirect_to game_path(@game) }
          format.js
        end
      else
        flash[:alert] = "error"
        redirect game_path(@game)
      end
    else
      player = params[:game][:player]
      @game.update(player: player)
      if @game.save
        redirect_to root_path
      else
        flash[:alert] = "error"
        redirect game_path(@game)
      end
    end
  end

  # private
  # def game_params
  #   params.require(:game).permit(:player)
  # end
end
