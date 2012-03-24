class MaterialHandling < ActiveRecord::Base
	attr_accessible :handling_date, :handling_items_attributes
	has_many :handling_items
	validates_presence_of :handling_date
	accepts_nested_attributes_for :handling_items, allow_destroy: true, reject_if: :all_blank

	def totalize()
		total = 0
		handling_items.each do |item|
			total += item.quantity * item.price
		end
		total
	end

end
