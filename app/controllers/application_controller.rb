class ApplicationController < ActionController::API
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :null_session
  
  def render_jsonapi_response(resource)
        if resource.errors.empty?
          render jsonapi: resource
        else
          render jsonapi_errors: resource.errors, status: 400
        end
    end

    private

		def configure_permitted_parameters

      devise_parameter_sanitizer.permit(:sign_up, keys: [:is_manager])

		end
end
