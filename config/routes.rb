Rails.application.routes.draw do

  root to: 'users#splash'
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#authenticate'
  get '/logout', to: 'sessions#destroy', as: :logout
  get '/signup', to: 'users#new', as: :signup
  post '/signup', to:'users#create'
  get '/find_lunch_form', to: 'sessions#find_lunch_form', as: 'find_lunch_form'
  post '/get_lunch', to: 'sessions#get_lunch'
  get '/your_lunch/:id', to: 'restaurants#first_result', as: 'first_result'
 
  get '/something_else', to: 'sessions#find_lunch_form', as: 'something_else'

  resources :tags, only: [:index, :show]
  resources :reviews
  resources :restaurants, only: [:index, :show]
  resources :users
  resources :reviews


end
