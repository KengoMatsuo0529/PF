class Message < ApplicationRecord
  
  enum checked: {
    read: 0,
    unread: 1
  }
  
  has_many :users
  has_many :health_centers
  has_many :rooms
  
  validates :user_id, allow_blank: true
  validates :health_center_id, allow_blank: true
  validates :room_id, presence: true
  validates :message, presence: true

end
