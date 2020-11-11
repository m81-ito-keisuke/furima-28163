class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email, :last_name, :first_name, :last_kana, :first_kana, :birthday])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end
end
