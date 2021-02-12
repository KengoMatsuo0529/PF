class ChangeUserHealthsToNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :user_healths, :health_center_id, true

  end
end
