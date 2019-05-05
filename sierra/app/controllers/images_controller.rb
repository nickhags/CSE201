class ImagesController < ApplicationController
	def new
		@image = Image.new
	end
	
	def create
		if params[:game_id]
			@game = Game.find(params[:game_id])
			@image = @game.images.create(image_params)
			redirect_to game_path(@game)
		else
			@application = Application.find(params[:application_id])
			@image = @application.images.create(image_params)
			redirect_to application_path(@application)
		end
	end

	def destroy
		if params[:game_id]
			@game = Game.find(params[:game_id])
			@image = @game.images.find(params[:id])
			@image.destroy
			redirect_to game_path(@game)
		elseif params[:application_id]
			@application = Application.find(params[:application_id])
			@image = @application.images.find(params[:id])
			@image.destroy
			redirect_to application_path(@application)
		end
	end

	private
	def image_params
		params.require(:image).permit(:url, :picture, :game_id, :application_id)
	end
end
