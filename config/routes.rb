Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  devise_for :users
  devise_for :admins
  devise_for :customers

  root :to => "homes#top"
  get 'home/about' => 'homes#about'

  resources :customers, only: [:show, :edit, :update]
  get 'quit' => 'customers#quit'
  patch 'out' => 'customers#out'
  resources :items, only: [:index, :show]
  resources :orders, only: [:new, :create, :show, :index]
  post 'confirm' => 'orders#confirm'
  get 'thx' => 'orders#thx'
  resources :cart_items, only: [:index, :create, :update, :destroy]
  delete 'destroy_all' => 'cart_items#destroy_all'
  resources :shippings, only: [:index, :create, :edit, :update, :destroy]

  resources :admin_customers, only: [:index, :show, :edit, :update]
  resources :admin_items, only: [:index, :new, :create, :show, :edit, :update]
  resources :admin_orders, only: [:show, :index]
  patch 'update' => 'admin_order_details#update'
  resources :admin_genres, only: [:index, :create, :edit, :update]
end
