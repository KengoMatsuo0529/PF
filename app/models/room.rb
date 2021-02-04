class Room < ApplicationRecord

  belongs_to :user
  belongs_to :health_center
  has_many :messages

  validates :user_id, presence: true
  validates :health_center_id, presence: true

end
