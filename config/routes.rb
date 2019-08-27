Rails.application.routes.draw do
  resources :mod_events
  resources :user_mods
  resources :follows
  resources :tweets
  resources :mods
  resources :users
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
