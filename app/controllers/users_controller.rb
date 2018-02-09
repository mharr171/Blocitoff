class UsersController < ApplicationController
  def show
    @user = nil
    @user = current_user if current_user
  end
end
