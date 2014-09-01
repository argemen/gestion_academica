class Institucion < ActiveRecord::Base
	has_many :AreaAcademica

	validates_uniqueness_of :nombre, :siglas
	validates_presence_of :nombre

end
