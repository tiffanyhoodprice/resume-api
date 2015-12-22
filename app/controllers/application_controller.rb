class ApplicationController < ActionController::Base
  
  config.to_prepare do
    DeviseController.respond_to :html, :json
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
end
