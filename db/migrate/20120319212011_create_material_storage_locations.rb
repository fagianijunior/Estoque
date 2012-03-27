class CreateMaterialStorageLocations < ActiveRecord::Migration
  def change
    create_table :material_storage_locations do |t|
      t.integer :material_id
      t.integer :storage_location_id
      t.float :quantity
      t.float :price
      t.timestamps
    end
  end
end
