class MessagesController < ApplicationController
  def create
    message = current_user.messages.build(permited_params)
    return unless message.save

    ActionCable.server.broadcast 'chatroom_channel',
                                 modified_message: message_render(message)
  end

  private

  def message_render(message)
    render(partial: 'message', locals: { message: message })
  end

  def permited_params
    params.require(:message).permit(:body)
  end
end
