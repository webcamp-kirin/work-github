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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
