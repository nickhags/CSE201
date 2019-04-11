class GamesController < ApplicationController
	def new
	end
	def create
		@game = Game.new(game_params)
		@game.save
		redirect_to @game
	end

	def show
		@game = Game.find(params[:id])
	end
	def index
		@games = Game.all
	end

	private
	def game_params
		params.require(:game).permit(:title, :description, :developers, :platforms, :url, :price)
	end
end
