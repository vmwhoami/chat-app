# frozen_string_literal: true

class ChatroomController < ApplicationController
  before_action :logged_in_user

  def index
    @messages = Message.all.includes(:user)
    @message = Message.new
  end

  private

  def logged_in_user
    redirect_to login_path unless current_user
  end
end
