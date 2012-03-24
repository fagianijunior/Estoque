class RemoveTableBatches < ActiveRecord::Migration
  def up
  	drop_table :batches
  end

  def down
  end
end
