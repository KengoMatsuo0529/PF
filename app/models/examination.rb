class Examination < ApplicationRecord

  belongs_to :user
  belongs_to :health_center
  belongs_to :hospital

  validates :doctor, presence: true
  validates :date, presence: true
  validates :speciment, presence: true
  validates :result, presence: true

end
