class SessionsController < ApplicationController
  def login,
    #Login Form
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email], params[:login_password])
    if authorized_user
      flash[:notice] = "Welcome!, you are currently logged in as #{authorized_user.username}"
      redirect_to(:action => 'home')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color] = "Invalid"
      render "login"
    end
  end 
end
