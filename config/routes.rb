Rails.application.routes.draw do
  resources :friendships
  resources :pictures
  devise_for :users, path: 'account'
  resources :users, only: [:show] do
    resources :pictures, only: [:show, :index]
    resources :friendships, only: [:index]
  end
  root 'pictures#index'
end
