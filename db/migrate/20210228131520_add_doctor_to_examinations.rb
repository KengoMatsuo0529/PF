class AddDoctorToExaminations < ActiveRecord::Migration[5.2]
  def change
    add_column :examinations, :doctor, :string
    add_column :examinations, :date, :date
    add_column :examinations, :speciment, :string
  end
end
