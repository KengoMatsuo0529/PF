class AddHolidayToHealthCenter < ActiveRecord::Migration[5.2]
  def change
    add_column :health_centers, :holiday, :text
  end
end
