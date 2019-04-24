Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :applications do
	collection do
		get :approve
		get :reject
	end
  end
  
  
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'

  get 'login', to: 'sessions#new', as: 'login'

  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :games do
    resources :images
	collection do
		get :search
		get :sort
	end
  end
  
end

