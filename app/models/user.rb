class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum gender: {
    man: 0,
    woman: 1,
  }       
         
  belongs_to :user_health
  belongs_to :room
  belongs_to :message
  
  
end
