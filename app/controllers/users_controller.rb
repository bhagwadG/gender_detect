class UsersController < ApplicationController
  
  def show
    @user  = User.find(params[:id])
    @title = @user.id
  end
  
  def new
    @title = "Train"
  end
end
