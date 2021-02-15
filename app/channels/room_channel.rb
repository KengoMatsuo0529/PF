class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def speak(data)
    room = Room.find(data['room_id'])
    Message.create! message: data['message'], room_id: data['room_id'], checked: data['checked'], user_checked: false, healthcenter_checked: false, user_id: room.user_id, health_center_id: room.health_center_id
  end
end
