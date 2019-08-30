Rails.application.routes.draw do
  resources :tokens, only: [:create]
  resources :mod_events , only: [:show,:create]
  # resources :user_mods
  resources :follows, only: [:show]
  resources :tweets, only: [:index, :create]
  # resources :mods
  resources :users, only: [:create,:index]
  # get '/create-event/:user_id/:mod_id' ,to: "mod_events#createEvent"
  # resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
