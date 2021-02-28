class Hospital < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :examinations, dependent: :destroy
    
  def self.search(search)
    if search
      Hospital.where(['name LIKE? OR address_street LIKE?', "%#{search}%","%#{search}%"])
    else
      User.all
    end
  end 
end
