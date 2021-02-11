class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def up
    change_column_null :users, :prefecture_code, true
  end

  def down
    change_column_null :users, :prefecture_code, false
  end
end
