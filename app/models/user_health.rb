class UserHealth < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :health_center, optional: true

  validates :user_id, presence: true
  validates :health_center_id, presence: true
  validates :temperature, presence: true
  validates :condition, presence: true
  validates :transportation, presence: true
end
