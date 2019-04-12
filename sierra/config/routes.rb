Rails.application.routes.draw do
  root 'welcome#index'
  resources :games do
    resources :images
	collection do
		get :search
	end
  end
end

