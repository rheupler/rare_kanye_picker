class ImagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @game = Game.find(params[:game_id])
    @image = Image.new
  end

  def create
    @game = Game.find(params[:game_id])
    image_id = params[:image_id].to_i
    @image = @game.images.new(image_id)
    if @image.save
      redirect_to game_path
    else
      flash[:notice] = "No sirree bob"
      redirect_to admin_index_path
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to root_path
  end

  private
    def image_params
      params.require(:image).permit(:name, :description)
    end
end
