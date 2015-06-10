class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_service_provider!

  def after_sign_up_path_for(resource)
    "service_providers/new"
  end

end
