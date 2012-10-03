Inventory::Application.routes.draw do
  get "users/index"

  root :to => 'users#index'
  resources :users
  resources :items
end
