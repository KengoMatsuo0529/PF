class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: {
    man: 0,
    woman: 1
  }

  has_many :user_healths
  has_many :rooms
  has_many :messages, dependent: :destroy
  has_many :examinations ,dependent: :destroy

  has_many :active_notifications, class_name: 'Message', foreign_key: 'user_id', dependent: :destroy
  has_many :passive_notifications, class_name: 'Message', foreign_key: 'health_center_id', dependent: :destroy

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :gender, presence: true
  validates :age, inclusion: { in: 1..99 }
  validates :postcode, presence: true, length: { is: 7 }
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :address_building, presence: true
  validates :phone_number, presence: true, length: { in: 10..11 }
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :is_deleted, inclusion: { in: [true, false] }

  def self.search(search)
    if search
        User.where(['first_name_kana LIKE? OR last_name_kana LIKE? OR phone_number LIKE?', "%#{search}%","%#{search}%","%#{search}%"])
    else
        User.all
    end
  end

  def full_name
    self.last_name + self.first_name
  end

  def full_name_kana
    self.last_name_kana + self.first_name_kana
  end
  
  def self.guest
    find_or_create_by!(email: 'guest@example.com', last_name: "田中", first_name: "太郎", last_name_kana: "タナカ", first_name_kana: "タロウ", postcode: "1234567", address_city: "東京都", address_street: "渋谷区", address_building: "神南1丁目19-11", phone_number: "08034268377", gender: "man", age: "27", is_deleted: "false") do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end

end
