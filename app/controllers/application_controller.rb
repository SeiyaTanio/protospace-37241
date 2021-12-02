class ApplicationController < ActionController::Base
  before_action :configure_permitted_paraneters, if: :devise_controller?

  private
  def configure_permitted_paraneters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:profile])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:occupation])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:position])
    
  end
end
