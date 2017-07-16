Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :trips
    resources :trip_images
    resources :trip_users

    root to: "users#index"
  end

  resources :trips
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
