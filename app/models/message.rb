class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later self }

  enum checked: {
    read: 0,
    unread: 1
  }

  belongs_to :user, optional: true
  belongs_to :health_center, optional: true
  belongs_to :room

  validates :user_id, allow_blank: true, length: { in: 1..200 }
  validates :health_center_id, allow_blank: true, length: { in: 1..200 }
  validates :room_id, presence: true
  validates :message, presence: true

end
