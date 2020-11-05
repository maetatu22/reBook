Rails.application.routes.draw do
  devise_for :users
  # get 'post/index'
  root to: "posts#index"

  resources :posts
  resources :users, only: [:edit, :update, :show]
end
