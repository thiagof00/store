Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :unsubscribe, only [:show]
  resources :products
  root "products#index"

  resources :products do
    resources :subscribers, only: [ :create ]
  end
  
end
