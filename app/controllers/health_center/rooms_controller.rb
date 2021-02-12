class HealthCenter::RoomsController < ApplicationController

  before_action :authenticate_health_center!

  def index
    @rooms = Room.all.order(:id)
    @health_center = current_health_center
  end

  def show
    @room = current_health_center.rooms.find_by(user_id: params[:user_id])
    @messages = Message.where(room_id: @room.id)
  end

end
