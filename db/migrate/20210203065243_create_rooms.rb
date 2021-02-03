class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|

      t.integer :user_id, null: false
      t.integer :health_center_id, null: false

      t.timestamps
    end
  end
end
