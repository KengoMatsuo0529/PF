class UserHealth < ApplicationRecord
  
  enum condition: {
    best: 0,
    good: 1,
    normal: 2,
    bad: 3,
    worst: 4
  }
  
  has_many :users
  has_many :health_centers
  
  validates :user_id, presence: true
  validates :health_center_id, presence: true
  validates :temperature, presence: true, inclusion: { in: 30.0..45.0 }
  validates :condition, presence: true, inclusion: { in: 0..4 }
  
end
