class Room < ApplicationRecord
  
  has_many :users
  has_many :health_centers
  belongs_to :message

end
