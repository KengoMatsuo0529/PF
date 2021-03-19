class HealthCenter::RoomsController < ApplicationController

  def index
    @messages = current_health_center.messages
    user_ids = @messages.map(&:user_id).uniq
    @rooms = Room.where(user_id: user_ids, health_center_id: current_health_center.id).search(current_health_center.id, params[:search]).page(params[:page]).per(6)
    @health_center = current_health_center
  end

  def show
    @room = current_health_center.rooms.find_by(user_id: params[:user_id])
    unless @room
      @room = current_health_center.rooms.create(user_id: params[:user_id])
    end
    @messages = Message.where(room_id: @room.id)
    @user = User.find(params[:user_id])
    @messages.update(healthcenter_checked: true)
  end
end
