class AddFromToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :from, :integer
  end
end
