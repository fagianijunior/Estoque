class CreateMaterialHandlingItems < ActiveRecord::Migration
  def change
    create_table :material_handling_items do |t|
      t.integer :material_handling_id
      t.integer :material_storage_location_id
      t.float :quantity
      t.float :price
      t.timestamps
    end
  end
end
