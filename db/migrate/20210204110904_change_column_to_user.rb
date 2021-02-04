class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def change
    
    change_column :user_healths, :temperature, :float

  end
end
