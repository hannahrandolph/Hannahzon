Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products

  root 'products#index'
  devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  post 'checkout/create', to: 'checkouts#create'
  get 'billing', to: 'billings#show'

  resources :order_items, only: [:show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
