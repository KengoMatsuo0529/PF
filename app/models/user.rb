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
  
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :gender, inclusion: { in: 0..1 }
  validates :age, inclusion: { in: 1..99 }
  validates :post_code, presence: true, length: { is: 7 }
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :address_building, presence: true
  validates :phone_number, presence: true,length: { in: 10..11 }
  validates :email, presence: true
  validates :encrypted_password, presence: true
  
  
end
