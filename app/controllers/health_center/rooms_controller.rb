class HealthCenter::RoomsController < ApplicationController
  
  
  def index
    @rooms = Room.all.order(:id)
  end
  
  def show
    @room = current_health_center.rooms.find_by(user_id: params[:user_id])
    unless @room
      @room = current_health_center.rooms.create(user_id: params[:user_id])
    end
    @messages = Message.where(room_id: @room.id)
  end
  
end
