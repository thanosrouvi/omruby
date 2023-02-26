Rails.application.routes.draw do
  resources :friends
<<<<<<< HEAD
  resources :posts do
    #resources :comments
  end
  
  resources :rooms do 
    resources :messages
  end
  devise_for :customers
  resources :users
=======
   
  devise_for :customers
  resources :users

  resources :posts do
    resources :comments
  end
  
>>>>>>> refs/remotes/origin/main
  root 'pages#home'
  get 'about'=>'pages#about'
  get 'login'=>'pages#login'
  get 'signUp'=>'pages#signUp'
  get 'chat'=>'pages#chat'  
  get 'notification'=>'pages#notification'
  get "/auth/facebook/callback", to: "omniauth_callbacks#facebook"
<<<<<<< HEAD
  get 'posts'=>'posts#index'
  devise_scope :customer do
    get 'customers', to: 'devise/sessions#new'
  end
  get 'customer/:id', to: 'customers#show', as: 'customer'
  # Defines the root path route ("/")
  # root "articles#index"

=======
  get '/siqn_out' => 'sessions#siqn_out'
  get 'posts'=>'posts#index'
>>>>>>> refs/remotes/origin/main
  #delete 'Siqn_Out' => 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
