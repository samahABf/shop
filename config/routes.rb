Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :products 

  get 'pages/about'

  get 'pages/contact'

  root 'pages#index'
  get 'pages/index'
 
resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
