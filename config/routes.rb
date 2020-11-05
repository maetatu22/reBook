Rails.application.routes.draw do
  devise_for :users
  # get 'post/index'
  root to: "posts#index"

  resources :posts, only: [:index, :new, :create, :destroy, :edit]
  resources :users, only: [:edit, :update]
end
