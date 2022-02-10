Rails.application.routes.draw do
  root 'posts#index'

  resources :posts

  get '/signup', to:'users#new'
  resources :users
end
