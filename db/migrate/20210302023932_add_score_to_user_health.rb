class AddScoreToUserHealth < ActiveRecord::Migration[5.2]
  def change
    add_column :user_healths, :score, :decimal, precision: 5, scale: 3
  end
end
