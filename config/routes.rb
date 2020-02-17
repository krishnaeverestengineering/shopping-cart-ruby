Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root 'users#index'
  get '/register', to: 'users#register'
  get '/login', to: 'users#login'

  post '/authenticate', to: 'users#user_athentication'

  get 'seller/login', to: 'seller#login'
  get 'seller/register', to: 'seller#register'
  get 'seller/AddProduct', to: 'seller#newProduct'
  get 'seller/EditProduct', to: 'seller#editProduct'
  get 'seller/MyProducts', to: 'seller#myProducts'

  post 'add-product', to: 'seller#add_new_product'

  resources :products
  get 'home', to: 'products#index'
end
