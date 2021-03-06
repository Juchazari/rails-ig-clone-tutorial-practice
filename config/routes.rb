Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:show, :new, :create, :destroy]

  get 'search/index'
end
