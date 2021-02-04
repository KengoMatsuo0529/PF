class HealthCenter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :user_healths
  has_many :rooms
  has_many :messages
  
  validates :name, presence: true
  validates :postcode, presence: true, length: { is: 7 }
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :address_building, presence: true
  validates :phone_number, presence: true,length: { in: 10..11 }
  validates :corporate_number, presence: true, length: { in: 12..13 }
  validates :email, presence: true
  validates :encrypted_password, presence: true
  
  def self.search(health_center)
    @health_center = HealthCenter.where("address_street LIKE?","%#{health_center}%")
  end
  
  
end
