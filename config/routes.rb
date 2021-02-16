Rails.application.routes.draw do
  devise_for :users
  get 'top' => 'homes#top'
  get 'about' => 'homes#about'

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
end
