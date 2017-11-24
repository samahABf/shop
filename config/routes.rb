Rails.application.routes.draw do
  resources :products 
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'pages/about'
  get 'pages/contact'
  get 'pages/index'
    get 'pages/landing_page'
  root 'pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
