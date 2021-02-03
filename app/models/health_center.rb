class HealthCenter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  belongs_to :user_health
  belongs_to :room
  belongs_to :message
  
  validates :name, presence: true
  validates :postcode, presence: true, length: { is: 7 }
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :address_building, presence: true
  validates :phone_number, presence: true,length: { in: 10..11 }
  validates :corporate_number, presence: true, length: { in: 12..13 }
  validates :email, presence: true
  validates :encrypted_password, presence: true
  
end
