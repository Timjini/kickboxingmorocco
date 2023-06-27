class ApplicationController < ActionController::Base
    # skip CSRF token validation for JSON, JavaScript and XML requests
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token, if: :json_request?
    # devise fields
    before_action :configure_permitted_parameters, if: :devise_controller?

    
    protected 

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])
    end

    private

    def json_request?
      request.format.json?
    end
end
