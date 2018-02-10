class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
    @items = nil
    @items = @user.items if @user
    @item = Item.new
  end

  def index
    @users = User.all
  end
end
