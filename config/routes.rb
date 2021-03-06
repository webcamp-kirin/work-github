Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions: 'admins/admins/sessions',
  registrations: 'admins/admins/registrations',
  }
  devise_for :customers, controllers: {
  sessions: 'customers/customers/sessions',
  registrations: 'customers/customers/registrations',
  passwords: 'customers/customers/passwords'
  }  
  devise_for :users

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
  get 'destroy_all' => 'cart_items#destroy_all'
  resources :shippings, only: [:index, :create, :edit, :update, :destroy]
  resources :carts
  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'

  namespace :admins do
  resources :customers, only: [:index, :show, :edit, :update]
  resources :items, only: [:index, :new, :create, :show, :edit, :update]
  resources :orders, only: [:show, :index, :update]
  resources :genres, only: [:index, :create, :edit, :update]
  resources :order_details,only: [:update]
  end
end
