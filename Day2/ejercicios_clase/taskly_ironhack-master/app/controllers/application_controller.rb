class ApplicationController < ActionController::Base
  before_action :is_logged_in?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  unless Rails.env.development?
  	protect_from_forgery with: :exception
  end

  include SessionsHelper

  private
  def is_logged_in?
    unless logged_in?
      redirect_to '/login'
    end
  end
end
