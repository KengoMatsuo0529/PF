class Message < ApplicationRecord
  
  enum checked: {
    read: 0,
    unread: 1
  }
  
  belongs_to :user
  belongs_to :health_center
  belongs_to :room
  
  validates :user_id, allow_blank: true, length: { in: 1..200 }
  validates :health_center_id, allow_blank: true, length: { in: 1..200 }
  validates :room_id, presence: true
  validates :message, presence: true

end
