Rails.application.routes.draw do

  root to: 'users#splash'
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout
  get '/signup', to: 'users#new', as: :signup
  post '/signup', to:'users#create'
  get '/find_lunch_form', to: 'sessions#find_lunch_form', as: 'find_lunch_form'
  post '/get_lunch', to: 'sessions#get_lunch'

  resources :tags, only: [:index]
  # resources :reviews
  resources :restaurants, only: [:index, :show]
  resources :users, only: [:index, :show, :create, :edit, :update ]

end
