class ImagesController < ApplicationController
	def new
		@image = Image.new
	end
	
	def create
		@game = Game.find(params[:game_id])
		@image = @game.images.create(image_params)
		redirect_to game_path(@game)
	end

	def destroy
		@game = Game.find(params[:game_id])
		@image = @game.images.find(params[:id])
		@image.destroy
		redirect_to game_path(@game)
	end

	private
	def image_params
		params.require(:image).permit(:url)
	end
end
