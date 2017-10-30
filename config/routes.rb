Rails.application.routes.draw do
  root 'home#index'

  resources :users, only:[:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :products
  resources :orders
  resources :line_items, only: [:index, :create, :update, :destroy]
  get '/login', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
