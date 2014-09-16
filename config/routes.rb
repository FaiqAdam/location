Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :locations do
    member do
      get :get_cities
      get :get_areas
    end
  end
  resources :users

  root to: "home#index"

end
