Rails.application.routes.draw do
  devise_for :users
  # get 'post/index'
  root to: "post#index"
  resources :users, only: [:edit, :update]
end
