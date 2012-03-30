class Material < ActiveRecord::Base
	attr_accessible :name, :unit_id
	belongs_to :unit
	has_many :material_storage_locations, dependent: :destroy

	validates_presence_of :name, :unit

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end
end
