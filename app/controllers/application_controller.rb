class ApplicationController < ActionController::Base
    # skip CSRF token validation for JSON, JavaScript and XML requests
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token, if: :json_request?
    # devise fields
    before_action :configure_permitted_parameters, if: :devise_controller?

    
    protected 

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])
      devise_parameter_sanitizer.permit(:account_update, keys: [:photo])
    end

    private

    def json_request?
      request.format.json?
    end

    def authenticate_user!
      unless current_user
        redirect_to new_user_session_path, alert: "Vous devez vous connecter pour accéder à cette page."
      end
    end

    def authenticate_user_coach!
      unless current_coach 
            redirect_to root_path, alert: "Vous n'avez pas les droits pour accéder à cette page."
      end
    end

end
