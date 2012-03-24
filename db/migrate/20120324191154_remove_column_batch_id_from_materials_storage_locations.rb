class RemoveColumnBatchIdFromMaterialsStorageLocations < ActiveRecord::Migration
  def up
  	remove_column :material_storage_locations, :batch_id
  end

  def down
  end
end
