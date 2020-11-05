Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"

  resources :posts do
    resources :profiles, only: [:index, :new, :create, :edit, :update]
  end
  resources :users, only: [:edit, :update, :show]
end
