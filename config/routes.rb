Rails.application.routes.draw do
  get "users/new"

  root 'welcome#index'

  get '/signup' => 'users#new'
  
  resources :tasks
end