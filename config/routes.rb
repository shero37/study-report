Rails.application.routes.draw do
  devise_for :users
  root to: "students#index"
  resources :users, only: [:edit, :update]
  resources :students, only: [:index]
end
