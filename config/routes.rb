Rails.application.routes.draw do
  root 'welcome#index'

  resources :tasks
  resources :users

  get '/signup' => 'users#new'
  
  
end