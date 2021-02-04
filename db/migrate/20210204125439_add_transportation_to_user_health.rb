class AddTransportationToUserHealth < ActiveRecord::Migration[5.2]
  def change
    add_column :user_healths, :transportation, :text
    add_column :user_healths, :want_examination, :boolean
  end
end
