class Unit < ActiveRecord::Base
	attr_accessible :name
	has_many :materials, dependent: :destroy

	validates_presence_of :name

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			scoped
		end
	end
end
