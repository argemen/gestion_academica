class AreaAcademica < ActiveRecord::Base
	belongs_to :institucion

	validates_uniqueness_of :nombre
	validates_presence_of :nombre
end
