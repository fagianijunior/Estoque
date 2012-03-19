class Unit < ActiveRecord::Base
	attr_accessible :name
	has_many :materials

	validates_presence_of :name
end
