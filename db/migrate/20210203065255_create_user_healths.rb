class CreateUserHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :user_healths do |t|

      t.timestamps
    end
  end
end
