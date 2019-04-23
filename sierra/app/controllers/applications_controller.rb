class ApplicationsController < ApplicationController
	def new
		@application = Application.new
	end
	
	def edit
		@application = Application.find(params[:id])
	end

	def create
		@application = Application.new(application_params)
		if @application.save
			redirect_to @application
		else
			render 'new'
		end
	end

	def show
		@application = Application.find(params[:id])
	end
	
	def index
		@applications = Application.all
	end

	def update
		@application = Application.find(params[:id])
		if @application.update(application_params)
			redirect_to @application
		else
			render 'edit'
		end
	end

	def destroy
		@application = Application.find(params[:id])
		@application.destroy
		redirect_to applications_path
	end
	
	def approve
		@application = Application.find_by_id(params[:application_id])
		@game = Game.new
		@game.create(Application.give(@application))
		redirect_to games_path
	end
	
	def deny
	
	end
	
	def give
		@application = Application.find_by_id(params[:application_id])
		toRet = [@application.title, application.description, application.developers, application.platforms, application.url, application.price]
		puts toRet
	end
	
	private
	def application_params
		params.require(:application).permit(:title, :description, :developers, :platforms, :url, :price, :status, :comments)
	end
end
