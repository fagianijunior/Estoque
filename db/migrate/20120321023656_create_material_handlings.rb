class CreateMaterialHandlings < ActiveRecord::Migration
  def change
    create_table :material_handlings do |t|
      t.date :handling_date

      t.timestamps
    end
  end
end
