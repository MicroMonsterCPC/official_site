Rails.application.routes.draw do

  resources :images
  root :to => 'home#index'
  get '/about' => "home#about", as: :about
  get 'homes/new' => "home#new"
  post 'homes/create' => "home#create"
  get '/admin' => "home#admin"

  resources :scores
  post '/scores/search' => 'scores#score_search'

  resources :games
  post '/ballot.json' => 'games#ballot'
  get '/creating_a_game_for_each_team/:team_name' => 'gemes#creating_a_game_for_each_team', as: :creating_a_game_for_each_team
  resources :users

  get '/sign_up' => 'users#new', as: :sign_up
  get '/sign_in' => 'users#sign_in', as: :sign_in
  post '/login' => 'users#login', as: :login
end
