Rails.application.routes.draw do
  get 'profiles/new'
  get 'profiles/create'
  get 'profiles/edit'
  get 'profiles/update'
  devise_for :users
  # get 'post/index'
  root to: "posts#index"

  resources :posts do
    resources :profiles, only: [:index, :new, :create, :edit, :update]
  end
  resources :users, only: [:edit, :update, :show]
end
