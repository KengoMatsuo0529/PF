class AddMagnitudeToUserHealth < ActiveRecord::Migration[5.2]
  def change
    add_column :user_healths, :magnitude, :decimal
  end
end
