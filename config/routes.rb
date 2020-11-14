Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get 'posts/search'

  resources :posts
  resources :users, only: [:edit, :update] do
    resources :profiles, only: [:index, :new, :create, :edit, :update]
  end

end
