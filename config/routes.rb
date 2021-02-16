Rails.application.routes.draw do
  get 'admin_genres/index'

  get 'admin_genres/create'

  get 'admin_genres/edit'

  get 'admin_genres/update'

  get 'admin_items/index'

  get 'admin_items/new'

  get 'admin_items/create'

  get 'admin_items/show'

  get 'admin_items/edit'

  get 'admin_items/update'

  get 'admin_orders/index'

  get 'admin_orders/show'

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
