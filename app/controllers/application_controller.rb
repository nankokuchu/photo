class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:show, :index]
  before_action :confiqure_permitted_parameters, if: :devise_controller?

  private
  def confiqure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
