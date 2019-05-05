module FormHelper
	def setup_application(application)
		application.images||= Image.new(www.google.com)
		application
	end
end
