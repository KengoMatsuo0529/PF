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
  
end
