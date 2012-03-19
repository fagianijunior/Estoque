class Material < ActiveRecord::Base
	attr_accessible :name, :unit_id
	belongs_to :unit
	has_many :material_storage_location

	validates_presence_of :name, :unit
end
