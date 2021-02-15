class AddCheckToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :user_checked, :integer
    add_column :messages, :healthcenter_checked, :integer
  end
end
