Rails.application.routes.draw do
  resources :line_items
  resources :carts
  
  get 'stores/index'
  root "stores#index"
  
  resources :products
  
  # root "products#index"

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
