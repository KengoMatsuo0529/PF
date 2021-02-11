class CreateUserHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :user_healths do |t|
      
      t.integer :user_id, null: false
      t.integer :health_center_id, null: false
      t.integer :temperature, null: false
      t.integer :condition, null: false

      t.timestamps
    end
  end
end
