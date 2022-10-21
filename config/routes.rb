Rails.application.routes.draw do
  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"

  resources :products
  resources :orders
  root 'products#index'

  # devise_for :users
  get 'main/index'
  # root to:"main#index"
  devise_for :users, :controllers => { :registrations => "my_registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
