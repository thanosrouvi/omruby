OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, "3805058033054088", "07d7c8a2cdefffa7f682df54664409da"
end
