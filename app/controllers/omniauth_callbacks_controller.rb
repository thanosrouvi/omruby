class OmniauthCallbacksController < ApplicationController

	def facebook
		redirect_to '/login/auth/facebook'	
	end

end
