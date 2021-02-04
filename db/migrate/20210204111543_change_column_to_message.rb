class ChangeColumnToMessage < ActiveRecord::Migration[5.2]
  def change
    
    change_column_null :messages, :user_id, true
    change_column_null :messages, :health_center_id, true

  end
end
