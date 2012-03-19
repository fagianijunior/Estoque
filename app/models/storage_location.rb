class StorageLocation < ActiveRecord::Base
	attr_accessible :name
	has_many :material_storage_locations

	validates_presence_of :name
end
