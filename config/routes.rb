Rails.application.routes.draw do
  resources :mod_tweets, only: [:show, :create]
  resources :global_messages, only: [:index, :create]
  resources :two_users_messages, only: [:create]
  resources :tokens, only: [:create]
  resources :mod_events , only: [:show,:create]
  resources :user_mods ,only: [:show]
  resources :follows, only: [:show]
  resources :tweets, only: [:index, :create]
  resources :mods, only: [:index,:show,:create]
  resources :users, only: [:create,:index,:show,:update]
  resources :blogs, only: [:create]
  get "/getAllImage", to: "users#getAllImage"
  post "/changeProfilePic", to: "users#changeProfilePic"
  get "/pendingModUser" , to: "user_mods#pendingModUser"
  post "/acceptModUser" , to: "user_mods#acceptModUser"
  post "/rejectModUser", to: "user_mods#rejectModUser"
  post "/createFollows", to: "follows#createFollows"
  post "/removeFollows", to: "follows#removeFollows"
  get "working/:id" , to: "users#workingToggle"
  get "twoUsersChat/:sender_id/:receiver_id", to: "two_users_chats#getMessages"
  mount ActionCable.server => '/cable'
  # resources :two_users_chats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
