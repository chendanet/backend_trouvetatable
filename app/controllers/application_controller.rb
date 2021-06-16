class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  def render_jsonapi_response(resource)
        if resource.errors.empty?
          render jsonapi: resource
        else
          render jsonapi_errors: resource.errors, status: 400
        end
    end

    protected

		def configure_permitted_parameters

			devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, keys: [:is_manager] )}

			devise_paramater_sanitizer.permit(:account_update) { |u| u.permit( :email, :password, :first_name, :last_name)}

		end
end
