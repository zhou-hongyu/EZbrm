# This is our user controller for setting the current user and login
class UsersController < ApplicationController
   before_filter :authenticate_user!
  def show
    @user = current_user
  end
end
