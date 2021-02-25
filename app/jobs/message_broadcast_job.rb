class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel', message: render_message(message)
  end

  private

  def render_message(message)
    if message.from == "user"
      ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
    else
      ApplicationController.renderer.render(partial: 'health_center/messages/message', locals: { message: message })
    end
  end
end
