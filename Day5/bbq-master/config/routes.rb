Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'users#profile'
  root 'users#profile'
  #root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]
  namespace :api do
    resources :barbecues, only: [:show]
  end
end
