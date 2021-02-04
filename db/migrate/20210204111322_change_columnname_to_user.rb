class ChangeColumnnameToUser < ActiveRecord::Migration[5.2]
  def change
    
    rename_column :users, :post_code, :postcode
    
  end
end
