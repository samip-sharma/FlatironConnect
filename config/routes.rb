Rails.application.routes.draw do
  resources :tokens, only: [:create]
  resources :mod_events , only: [:show,:create]
  resources :user_mods ,only: [:show]
  resources :follows, only: [:show]
  resources :tweets, only: [:index, :create]
  resources :mods, only: [:index,:show]
  resources :users, only: [:create,:index,:show,:update]
  # mount ActionCable.server => '/cable'
  # get '/create-event/:user_id/:mod_id' ,to: "mod_events#createEvent"
  # resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
