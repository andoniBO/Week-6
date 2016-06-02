class UsersController < ApplicationController
  skip_before_action :signed_in_user, only: :profile

  def profile
    @user = current_user
    render 'users/profile'
  end
end
