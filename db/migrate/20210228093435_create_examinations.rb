class CreateExaminations < ActiveRecord::Migration[5.2]
  def change
    create_table :examinations do |t|
      t.integer :user_id
      t.integer :hospital_id
      t.boolean :result

      t.timestamps
    end
  end
end
