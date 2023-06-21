Rails.application.routes.draw do
  devise_for :users
  root to: "preparers#index"
  resources :preparers, only: [:new, :create]
end
