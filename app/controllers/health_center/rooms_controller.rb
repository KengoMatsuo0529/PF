class HealthCenter::RoomsController < ApplicationController

  before_action :authenticate_health_center!

  def index
    @rooms = Room.search(current_health_center.id, params[:search])
    @health_center = current_health_center
  end

  def show
    @room = current_health_center.rooms.find_by(user_id: params[:user_id])
    @messages = Message.where(room_id: @room.id)
    @user = User.find(params[:user_id])
  end

end
