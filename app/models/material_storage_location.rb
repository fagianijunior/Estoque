class MaterialStorageLocation < ActiveRecord::Base
	belongs_to :material
	belongs_to :storage_location
	has_many :material_handling_items, :dependent => :destroy
	
	def composedName()
	  self.storage_location.name + ": " +self.material.name
	end
	
	 def self.search(search)
    if search
      where('id =', "%#{search}%")
    else
      scoped
    end
  end
	
end
