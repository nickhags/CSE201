Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'

  get 'login', to: 'sessions#new', as: 'login'

  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :games do
    resources :images
	collection do
		get :search
	end
  end
  
end

