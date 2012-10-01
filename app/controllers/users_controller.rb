class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Success has come to those who wait"
      redirect_to users_path
    else
      flash[:error] = "We need to try a little harder"
      render action: "new"
    end
  end
end
