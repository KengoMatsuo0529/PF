class HealthCenter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :user_healths
  has_many :rooms
  has_many :messages
  has_many :examinations
  
  validates :name, presence: true
  validates :postcode, presence: true, length: { is: 7 }
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :address_building, presence: true
  validates :phone_number, presence: true, length: { in: 10..11 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  validates :corporate_number, presence: true
  
  def self.search(search)
    if search
        HealthCenter.where(['address_street LIKE?', "%#{search}%"])
    else
        HealthCenter.all
    end
  end
  
  
end
