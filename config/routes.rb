Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :products do
    member do
      get "purchase"
    end
  end
  
  resources :users do
    member do
      get "logout"
      get "info"
      get "address"
      get "credit"
    end
  end
  
  resources :addresses, only: :new do
    collection do
      get "create_page"
    end
  end
  
end
