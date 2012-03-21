class CreateHandlingItems < ActiveRecord::Migration
  def change
    create_table :handling_items do |t|
      t.integer :material_handling_id
      t.integer :material_id
      t.float :quantity
      t.float :price

      t.timestamps
    end
  end
end
