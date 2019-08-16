Rails.application.routes.draw do
  root 'posts#index'

  resources :users
  resources :posts, only: [:new, :create, :index]
  get '/login' , to: 'sessions#new'
  post '/login' , to: 'sessions#create'
  delete '/signout' , to: 'sessions#destroy'
end
