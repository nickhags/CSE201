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
			render 'submitted'
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
			redirect_to applications_path
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
	    @application = Application.find(params[:id])
		hash = {}
		hash[:title] = @application.title
		hash[:description] = @application.description
		hash[:developers] = @application.developers
		hash[:platforms] = @application.platforms
		hash[:url] = @application.url
		hash[:price] = @application.price
		@game = Game.new(hash)
		@game.save
		@application.status = "Approved"
		@application.save
		redirect_to applications_path
	end
	
	def reject
		@application = Application.find(params[:id])
		@application.status = "Rejected"
		@application.save
	end
	
	
	private
	def application_params
		params.require(:application).permit(:title, :description, :developers, :platforms, :url, :price, :status, :comments)
	end
end
