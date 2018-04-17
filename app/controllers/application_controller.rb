class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found


  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :password])
   devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :photo, :password, :password_confirmation])
  end
  
  def render_not_found
    redirect_to root_path, notice: 'Record not found'
  end
end
