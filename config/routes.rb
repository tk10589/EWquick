Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :preparers, only: [:index, :new, :create, :edit, :update]
  resources :customers, only: [:index, :new, :create, :edit, :update]
end
