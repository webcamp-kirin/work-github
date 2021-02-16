Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  devise_for :users
  get 'top' => 'homes#top'
  get 'about' => 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
