Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :locations
  resources :users

  root to: "home#index"

end
