class User::MessagesController < ApplicationController

  def create
    @room = Room.find(params[:id])
    @message = @room.message.build(message_params)
    @message.user_id = current_user.id
    @message_room = @message.room
    @healthcenter = @message.health_center
    if massage.save
      @message_room.create_notification_message!(current_user, @message.id)
    reder :index
    end
  end

  def notification
    @room = Room.find(params[:room_id])
    if params[:who] == 'user'
      msgs = Message.where(room_id: @room.id).where(user_id: current_user.id)
      msgs.where(user_checked: false).update(user_checked: true)
    elsif params[:who] == 'healthcenter'
      msgs = Message.where(room_id: @room.id).where(health_center_id: current_health_center.id)
      msgs.where(healthcenter_checked: false).update(healthcenter_checked: true)
    end
  end

end
