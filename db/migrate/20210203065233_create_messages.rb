class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|

      t.integer :user_id
      t.integer :health_center_id
      t.integer :room_id, null: false
      t.text :message, null: false
      t.integer :checked, null: false

      t.timestamps
    end
  end
end
