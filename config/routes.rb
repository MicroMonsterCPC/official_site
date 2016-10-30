Rails.application.routes.draw do

  root :to => 'home#index'
  get '/about' => "home#about", as: :about

  resources :games
  get '/creating_a_game_for_each_team/:team_name' => 'gemes#creating_a_game_for_each_team', as: :creating_a_game_for_each_team
  resources :users

  get '/sign_up' => 'users#new', as: :sign_up
  get '/sign_in' => 'users#sign_in', as: :sing_in
  post '/login' => 'users#login', as: :login
end
