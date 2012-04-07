class Material < ActiveRecord::Base
	attr_accessible :name, :unit_id
	belongs_to :unit
	has_many :material_storage_locations, :dependent => :destroy
	has_many :storage_locations, :through => :material_storage_locations
  has_many :material_handling_items, :through => :material_storage_locations

	

	validates_presence_of :name, :unit

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end
end
