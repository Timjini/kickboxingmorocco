class ApplicationController < ActionController::Base
    # skip CSRF token validation for JSON, JavaScript and XML requests
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token, if: :json_request?
    
end
