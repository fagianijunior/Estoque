class MaterialStorageLocation < ActiveRecord::Base
	belongs_to :material
	belongs_to :storage_location
	
end
