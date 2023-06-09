class ApplicationController < ActionController::Base
    # skip CSRF token validation for JSON, JavaScript and XML requests
    protect_from_forgery with: :null_session
end
