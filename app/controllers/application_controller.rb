class ApplicationController < ActionController::Base
  
 

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  rescue_from ActiveRecord::RecordNotFound do
  flash[:warning] = 'Resource not found.'
  redirect_back_or root_path
end
  #protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  def redirect_back_or(path)
  redirect_to request.referer || path
end
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:pseudo, :email, :password, :password_confirmation) }
  devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:pseudo, :email, :password, :password_confirmation, :current_password) }
  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:pseudo, :email, :password, :password_confirmation) }
    
    
end
end
