Rails.application.routes.draw do
  root "home#index"
  get '/about', to: 'about#index'
  get '/support', to: 'support#index'

  resources :animals, only: [:index]
  resources :sponsors, only: [:index]
end
