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

  def self.guest
    find_or_create_by!(email: 'hospital@com', name: "新宿総合病院", postcode: "1234567", address_city: "東京都", address_street: "新宿区",address_building: "歌舞伎町12-4", phone_number: "0337565512",holiday: "土曜日") do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
