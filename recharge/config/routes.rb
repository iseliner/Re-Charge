Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'make_memory', to: 'pages#make_memory'
  get 'pages/new', to: 'pages#new'
  post 'pages/', to: 'pages#create'

  resources :memories
end
