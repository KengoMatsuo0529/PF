class ChangeUserHealthToNull < ActiveRecord::Migration[5.2]
  def change
    def up
      # Not Null制約を外す場合　not nullを外したいカラム横にtrueを記載
      change_column_null :user_healths, :health_center_id, true
    end

    def down
      change_column_null :user_healths, :health_center_id, false
    end
  end
end
