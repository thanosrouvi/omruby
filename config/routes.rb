Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :customers
  resources :users
  root 'pages#home'
  get 'about'=>'pages#about'
  get 'login'=>'pages#login'
  get 'signUp'=>'pages#signUp'
  get 'chat'=>'pages#chat'  
  get 'notification'=>'pages#notification'
  get "/auth/facebook/callback", to: "omniauth_callbacks#facebook"
  get '/siqn_out' => 'sessions#siqn_out'
  get 'posts'=>'posts#index'
  #delete 'Siqn_Out' => 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
