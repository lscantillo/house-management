Rails.application.routes.draw do
  resources :brands
  devise_for :users, path_prefix: 'admin'

  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root 'pantries#index'
  resources :purchases do
    post :add_product, to: 'purchases#add_product'
    member do
      get :products, to: 'purchases#products'
    end
  end
  resources :pantries do
    member do
      get :purchases, to: 'pantries#purchases'
    end
  end
  resources :products
  resources :categories
  resources :users
  resources :roles
  resources :permissions
  resources :tags
end
