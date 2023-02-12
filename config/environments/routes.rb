Rails.application.routes.draw do
  root 'pages#home'
  get 'about'=>'pages#about'
  get 'login'=>'pages#login'
  get 'signUp'=>'pages#signUp'
  get 'chat'=>'pages#chat'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
