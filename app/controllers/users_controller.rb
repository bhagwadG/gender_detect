class UsersController < ApplicationController
  
  def index
    @title = "All users"
    @users = User.paginate(:page => params[:page])
  end
  
  def show
    @user  = User.find(params[:id])
    @title = @user.id
  end
  
  def new
    @user  = User.new
    @title = "Train"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
       redirect_to @user
    else
      @title = "Train"
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @title = "Edit user"
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
end
