class StorageLocation < ActiveRecord::Base
	attr_accessible :name
	has_many :material_storage_locations, dependent: :destroy

	validates_presence_of :name

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end
end
