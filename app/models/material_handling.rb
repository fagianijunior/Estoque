class MaterialHandling < ActiveRecord::Base
	attr_accessible :handling_date, :material_handling_items_attributes
	has_many :material_handling_items, :dependent => :destroy
	has_many :materials, :through => :material_handling_items
	has_many :storage_locations, :through => :material_handling_items
	
	validates_presence_of :handling_date
	accepts_nested_attributes_for :material_handling_items, allow_destroy: true, reject_if: :all_blank

	def totalize()
		total = 0
		material_handling_items.each do |item|
			total += item.quantity * item.price
		end
		total
	end
	
	 def self.search(search)
    if search
      where('handling_date = ?', "%#{search}%")
    else
      scoped
    end
  end
	
	
end
