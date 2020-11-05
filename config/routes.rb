Rails.application.routes.draw do
  get 'profiles/new'
  get 'profiles/create'
  get 'profiles/edit'
  get 'profiles/update'
  devise_for :users
  # get 'post/index'
  root to: "posts#index"

  resources :posts
  resources :users, only: [:edit, :update, :show]
  resources :profiles, only: [:new, :create, :edit, :update]
end
