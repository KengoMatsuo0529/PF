class Examination < ApplicationRecord

  belongs_to :user
  belongs_to :health_center, optional: true
  belongs_to :hospital

  validates :doctor, presence: true
  validates :date, presence: true
  validates :speciment, presence: true
  validates :result, presence: true
  
  def self.search(search)
    if search
        Examination.where(['first_name_kana LIKE? OR last_name_kana LIKE? OR phone_number LIKE?', "%#{search}%","%#{search}%","%#{search}%"])
    else
        User.all
    end
  end

end
