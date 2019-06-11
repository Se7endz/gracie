class ApplicationController < ActionController::Base

	before_action :configure_devise_parameters, if: :devise_controller?

	def configure_devise_parameters
		attributes = [:first_name, :last_name, :age, :belt, :phone, :profession, :nationality, :weight, :password, :password_confirmation, :email]
	  devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(attributes)}
	  devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(attributes)}
	end

	def update_user
		@user_to_pay = User.find(12)
		@user_to_pay.update(subscription: 100)
	end
end
