class User::RoomsController < ApplicationController

  before_action :authenticate_user!

  def create
    @message = Message.new
    ActionCable.server.broadcast "room_channel", message: @message
    @message.create(message_params)
  end

  def show
    @messages = Message.all
  end

  private

  def message_params
    params.permit(:message, :checked)
  end

end
