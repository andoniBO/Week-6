Rails.application.routes.draw do
  devise_for :users

  get '/' => 'products#index'

  get 'profile', to: 'users#profile'
  root to: 'users#profile'

  get '/users/' => 'users#index'
  get '/users/show/:id' => 'users#show'
  get '/users/new' => 'users#new'

  post '/users' => 'users#create'
  post '/users/destroy/:id' => 'users#destroy'

  get '/products/' => 'products#index'
  get '/products/show/:id' => 'products#show'
  get '/products/new' => 'products#new'

  post '/products' => 'products#create'
  post '/products/destroy/:id' => 'products#destroy'
end
