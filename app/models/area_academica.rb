class AreaAcademica < ActiveRecord::Base
  belongs_to :institucion
  has_many :carrera
	
  validates_presence_of :nombre, :telefono
  validates_uniqueness_of :nombre
end
