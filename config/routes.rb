Rails.application.routes.draw do
  resources :friends
  resources :posts do
    #resources :comments
  end
  
  resources :rooms do 
    resources :messages
  end
  devise_for :customers
  resources :users
  root 'pages#home'
  get 'about'=>'pages#about'
  get 'login'=>'pages#login'
  get 'signUp'=>'pages#signUp'
  get 'chat'=>'pages#chat'  
  get 'notification'=>'pages#notification'
  get "/auth/facebook/callback", to: "omniauth_callbacks#facebook"
  get 'posts'=>'posts#index'
  devise_scope :customer do
    get 'customers', to: 'devise/sessions#new'
  end
  get 'customer/:id', to: 'customers#show', as: 'customer'
  # Defines the root path route ("/")
  # root "articles#index"

  #delete 'Siqn_Out' => 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
