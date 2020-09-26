class SessionController < ApplicationController
  def new

  end

  def create
    debugger
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in(user) 
      redirect_to root_path
    else
      flash.now[:danger] = "Incorect password or email"
      render 'new'
    end
  end

  def destroy
    @current_user = nil
    flash[:danger] = "You have signed out"
    redirect_to root_path
  end
end
