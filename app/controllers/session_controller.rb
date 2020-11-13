class SessionController < ApplicationController
  before_action :check_login, only: [:new, :create]
  
  def new
  end

  def create
 
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      sign_in(user) 
      flash[:success] = "You have successfully loged in"
      redirect_to root_path
    else
      flash.now[:error] = "Incorect password or email"
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = "You have signed out"
    redirect_to root_url
  end

private
 
def check_login
  if current_user
    flash[:error] = "You are already logged in"
    redirect_to root_path 
  end
end

end
