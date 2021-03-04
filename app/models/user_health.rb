class UserHealth < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :health_center, optional: true

  validates :user_id, presence: true
  validates :temperature, presence: true
  validates :condition, presence: true
  validates :transportation, presence: true
  validates :want_examination,  inclusion: { in: [true, false] }
  
end
