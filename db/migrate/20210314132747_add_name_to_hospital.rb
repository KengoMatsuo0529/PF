class AddNameToHospital < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :name, :text
  end
end
