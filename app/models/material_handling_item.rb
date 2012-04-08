class MaterialHandlingItem < ActiveRecord::Base
	attr_accessible :material_storage_location_id, :quantity, :price
	belongs_to :material_handling
	belongs_to :material_storage_location
	
	has_one :material, :through => :material_storage_location
  has_one :storage_location, :through => :material_storage_location

	validates_presence_of :material_storage_location_id, :quantity, :price
	validates_associated :material_handling
end
