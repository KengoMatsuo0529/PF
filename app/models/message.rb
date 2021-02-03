class Message < ApplicationRecord
  
  enum checked: {
    read: 0,
    unread: 1
  }
  
  has_many :users
  has_many :health_centers
  has_many :rooms
  
end
