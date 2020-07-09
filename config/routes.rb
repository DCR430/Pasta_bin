Rails.application.routes.draw do
  get '/sessions/new', to: 'sessions#login', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions/logout', to: 'sessions#logout', as: 'sessions_logout'
  
  root 'sessions#login'
  resources :followings
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
