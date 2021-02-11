class RemoveImageIdFromHealthCenter < ActiveRecord::Migration[5.2]
  def change
    remove_column :health_centers, :image_id, :string
  end
end
