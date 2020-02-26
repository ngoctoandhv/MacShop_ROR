Rails.application.routes.draw do
  get 'admin/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  
  get 'stores/index'
  root "stores#index"
  
  resources :products

  get 'admin' => 'admin#index'
  
    controller :sessions do
        get 'login' => :new
        post 'login' => :create
        delete 'logout' => :destroy
    end
  get "/signup", to:"users#new"

  # get "/login", to: "sessions#new"
  # post "/login", to: "sessions#create"
  # delete "/logout", to: "sessions#destroy"
  
  # root "products#index"

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
