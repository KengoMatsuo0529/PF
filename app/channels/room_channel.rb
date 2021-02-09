class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
# TODO room＿id後で消す
  def speak(data)
    Message.create! message: data['message'], room_id: data['room_id'], checked: data['checked']
  end
end
