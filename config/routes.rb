Rails.application.routes.draw do
  resources :tags, only: [:index]
  # resources :reviews
  resources :restaurants, only: [:index, :show]
  resources :users, only: [:index, :show, :new, :create, :edit, :update ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
