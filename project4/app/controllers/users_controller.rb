class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You have successfully signed Up!"
      flash [:color] = "valid"
    else
      flash[:notice] = "Invalid"
      flash[:color] = "Invalid"
    end
    render "new"
  end
end
