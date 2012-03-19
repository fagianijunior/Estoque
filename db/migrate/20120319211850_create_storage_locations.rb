class CreateStorageLocations < ActiveRecord::Migration
  def change
    create_table :storage_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
