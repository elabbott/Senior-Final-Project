class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def access_denied(exception)
    redirect_to admin_organizations_path, :alert => exception.message
  end

  protected
  
  def configure_devise_permitted_parameters
    registration_params = [:email, :password, :password_confirmation, :fname, :lname, :dob, :address]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end
end
