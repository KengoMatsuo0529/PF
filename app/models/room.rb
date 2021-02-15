class Room < ApplicationRecord

  belongs_to :user
  belongs_to :health_center
  has_many :messages, dependent: :destroy
  

  validates :user_id, presence: true
  validates :health_center_id, presence: true


  

  def create_notification_message!(current_user, health_center_id)
    temp_ids = Message.select(:user_id).where(room_id: id).where.not(user_id: current_user.id).distinct
    temp_id.each do |temp_id|
      save_notification_message!(current_user, room_id, temp_id["user_id"])
    end
    save_notification_message!(current_user, room_id, user_id) if temp_ids.blank?
  end
  
  def save_notification_message!(current_user, message_id, user_id)
    notification = current_user.active_notifications.new(
      room_id: id,
      message_id: message_id,
      user_id: user_id,
      )
    if notification.user_id == notification.health_center_id
      notification.checked = true
    end
    notification.save if notification.valid?
    
  end

end
