class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:email, :password, :password_confirmation, :lastname, :firstname, :gender, :nickname) }
    devise_parameter_sanitizer.for(:account_update){ |u| u.permit(:email, :password, :password_confirmation, :lastname, :firstname, :gender,  :nickname, :profile, :current_password) }
  end
end
