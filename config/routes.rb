Rails.application.routes.draw do
  resources :products 
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update, :destroy]
  post '/pages/thank_you'
get '/products/:id', to: 'products#show'
get '/products', to: 'products#index'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/landing_page'
  root 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

