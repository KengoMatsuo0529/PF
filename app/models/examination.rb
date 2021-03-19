class Examination < ApplicationRecord

  belongs_to :user
  belongs_to :health_center, optional: true
  belongs_to :hospital

  validates :doctor, presence: true
  validates :date, presence: true
  validates :speciment, presence: true
  validates :result, inclusion: { in: [true, false] }

end
