class Room < ApplicationRecord

  has_many :users
  has_many :health_centers
  belongs_to :message

  validates :user_id, presence: true
  validates :health_center_id, presence: true

end
