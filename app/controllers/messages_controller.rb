class MessagesController < ApplicationController


  def create
    @message = current_user.messages.build(permited_params)
    if  @message.save
      redirect_to root_path
    end
  end

  private
  def permited_params
    params.require(:message).permit(:body)
  end
  
end