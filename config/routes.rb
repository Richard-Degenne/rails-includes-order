Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'consoles#index'

  resources :consoles do
    resources :games, shallow: true
  end

  get :export, to: 'exports#export'
end
