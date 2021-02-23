class HealthCenter::RoomsController < ApplicationController
  before_action :authenticate_health_center!

  def index
    @messages = current_health_center.messages
    room_ids = @messages.map(&:user_id)
    @rooms = Room.where(id: room_ids).search(current_health_center.id, params[:search]).distinct
    @health_center = current_health_center
    # @room = 
  end

  def show
    @room = current_health_center.rooms.find_by(user_id: params[:user_id])
    @messages = Message.where(room_id: @room.id)
    @user = User.find(params[:user_id])
    @messages.update(healthcenter_checked: true)
  end
end
