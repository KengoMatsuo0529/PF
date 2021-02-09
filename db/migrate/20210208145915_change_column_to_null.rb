class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def up
    change_column_null :prefecture_code, true
  end

  def down
    change_column_null :prefecture_code, false
  end
end
