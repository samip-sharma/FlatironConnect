Rails.application.routes.draw do
  resources :tokens, only: [:create]
  resources :mod_events , only: [:show,:create]
  resources :user_mods ,only: [:show]
  resources :follows, only: [:show]
  resources :tweets, only: [:index, :create]
  resources :mods, only: [:index,:show,:create]
  resources :users, only: [:create,:index,:show,:update]
  resources :blogs, only: [:create]
  get "/pendingModUser" , to: "user_mods#pendingModUser"
  post "/acceptModUser" , to: "user_mods#acceptModUser"
  post "/rejectModUser", to: "user_mods#rejectModUser"
  post "/createFollows", to: "follows#createFollows"
  post "/removeFollows", to: "follows#removeFollows"
  get "working/:id" , to: "users#workingToggle"

  # mount ActionCable.server => '/cable'
  # get '/create-event/:user_id/:mod_id' ,to: "mod_events#createEvent"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
