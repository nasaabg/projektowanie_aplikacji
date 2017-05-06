Rails.application.routes.draw do
  resources :trips
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
