class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :unit_id
      t.timestamps
    end
  end
  #add_foreign_key(:motorcycles, :models, :column => 'model' , :name => 'motorcycles.model_fk', :dependent => :delete)
end
