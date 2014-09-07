class AreaAcademica < ActiveRecord::Base
	belongs_to :institucion
	has_many :carrera

	validates_presence_of :nombre, :telefono

	def institucion_nombre
		return institucion.nombre if institucion
	end

	def institucion_nombre=(nombre)
  	  self.institucion = Institucion.find_or_create_by_name(nombre) unless nombre.blank?
	end

end
