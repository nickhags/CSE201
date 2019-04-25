class GamesController < ApplicationController
	def new
		@game = Game.new
	end
	
	def search
		if params[:search].blank?
			redirect_to(root_path, alert: "No query entered!") and return
		else 
			@parameter = "%%" + params[:search].downcase + "%%"
			@results = Game.all.where("lower(title) LIKE :search OR lower(description) LIKE :search", search: @parameter)
		end
	end
	
	def edit
		@game = Game.find(params[:id])
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

	def update
		@game = Game.find(params[:id])
		@game.update(game_params)
		redirect_to @game
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
		redirect_to games_path
	end
	
	def sort
		@order = params[:sort]
		 if @order == "titleasc"
			@games = Game.all.order(:title)
		 end
		 if @order == "titledesc"
			@games = Game.all.order(title: :desc)
		 end
		 if @order == "priceasc"
			@games = Game.all.order(:price)
		 end
		 if @order == "pricedesc"
			@games = Game.all.order(price: :desc)
		 end
	end
	
	def filter
		if !params[:os].blank?
			@parameter = "%%" + params[:os].downcase + "%%"
			@games = Game.all.where("lower(platforms) LIKE :search", search: @parameter)
		end
		if !params[:price].blank?
			
		end
		if !params[:pricemax].blank?
			
		end
		
	end
	
	private
	def game_params
		params.require(:game).permit(:title, :description, :developers, :platforms, :url, :price, :search)
	end
end
