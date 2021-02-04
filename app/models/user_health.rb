class UserHealth < ApplicationRecord
  
  belongs_to :user
  belongs_to :health_center
  
  validates :user_id, presence: true
  validates :health_center_id, presence: true
  validates :temperature, presence: true
  validates :condition, presence: true
  validates :transportation, presence: true 
end
