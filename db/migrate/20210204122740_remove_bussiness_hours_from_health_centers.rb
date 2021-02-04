class RemoveBussinessHoursFromHealthCenters < ActiveRecord::Migration[5.2]
  def change
    remove_column :health_centers, :bussiness_hours, :string
  end
end
