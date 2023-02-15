Rails.application.routes.draw do
  get 'reports/index'
  devise_for :users
  root to: "students#index"
  resources :users, only: [:edit, :update]
  resources :students do
    resources :reports, only: [:index, :create]
  end
end
