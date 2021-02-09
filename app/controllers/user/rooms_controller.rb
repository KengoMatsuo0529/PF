class User::RoomsController < ApplicationController
  
  before_action :authenticate_user!
  
  
  def create
    @message = Message.new
    ActionCable.server.broadcast "room_channel", message: @message
    @message.create(message_params)
  end
  
  def show
    @room = current_user.rooms.find_by(health_center_id: params[:health_center_id])
    unless @room
      @room = current_user.rooms.create(health_center_id: params[:health_center_id])
    end
    @messages = Message.where(room_id: @room.id)
  end
  
  private
  
  def message_params
    params.permit(:message, :checked)
  end
  
end
