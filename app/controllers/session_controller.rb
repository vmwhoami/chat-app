class SessionController < ApplicationController
  def new

  end

  def create
 
    user = User.find_by(email: params[:session][:email])
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
end
