class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?
 layout :layout_by_resource



 protected

 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password, :email,:password_confirmation])
 end

 def layout_by_resource
     devise_controller? ? "devise" : "application"
 end

	
end
