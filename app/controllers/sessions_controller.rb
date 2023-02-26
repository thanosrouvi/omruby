class SessionsController < ActionController
	def create 
		customer = Customer.from_omniauth(env["omniauth.auth"])
		session[:customer_id] = customer_id
		redirect_to root_url
	end

	def destroy
		session[:customer_id] = nil
		redirect_to root_url
	end
end