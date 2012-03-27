class MaterialHandlingItem < ActiveRecord::Base
	attr_accessible :material_storage_location_id, :quantity, :price
	belongs_to :material_handling
	belongs_to :material_storage_location
	# Isso não está certo
	#belongs_to :material
	validates_presence_of :material_storage_location_id, :quantity, :price
	validates_associated :material_handling
end
