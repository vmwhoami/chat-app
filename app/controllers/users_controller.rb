class UsersController < ApplicationController
  
  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
buybug
    if @user.save
      flash[:success] = "User created"
      redirect_to root_path
    else
      flash.now[:erro] = "Couldn't create user"
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end