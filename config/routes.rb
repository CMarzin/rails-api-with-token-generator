Rails.application.routes.draw do

  resources :bubble_games
  resources :users
  resources :items
  post 'authenticate', to: 'authentication#authenticate'
  
end
