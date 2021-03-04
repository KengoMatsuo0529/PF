class AddColumnToHospital < ActiveRecord::Migration[5.2]
  def change
    add_column :hospitals, :postcode, :string
    add_column :hospitals, :address_city, :string
    add_column :hospitals, :address_street, :string
    add_column :hospitals, :address_building, :string
    add_column :hospitals, :phone_number, :string
    add_column :hospitals, :holiday, :text
  end
end
