Rails.application.routes.draw do
	root 'pages#login'
	get "/auth/facebook/callback", to: "omniauth_callbacks#facebook"
