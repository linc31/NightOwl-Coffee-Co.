Rails.application.routes.draw do
  root 'home#index'

  resources :users, only:[:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :products, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :line_items
  # resources :line_items, only: [:index, :create, :update, :destroy]
  post '/add_item/:product_id', to: 'line_items#add_item'
  post '/remove_item/:line_items_id', to: 'line_items#remove_item'
  post '/purchase/:order_id', to: 'line_items#purchase'
  
  get '/login', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
