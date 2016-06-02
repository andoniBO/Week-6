class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :signed_in_user
  before_action :configure_permitted_parameters, if: :devise_controller?


  unless Rails.env.development?
  	protect_from_forgery with: :exception
  end

  private
    def signed_in_user
      unless current_user
        redirect_to new_user_session_path, notice: 'Access forbidden.'
      end
    end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
    end
end
