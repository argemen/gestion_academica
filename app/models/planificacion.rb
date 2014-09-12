class Planificacion < ActiveRecord::Base
	belongs_to :semestre
	belongs_to :carrera
	belongs_to :unidad_curricular
	belongs_to :seccion

	has_many :plan_evaluacion

	def detalle 
		return self.semestre.nombre + ' - ' + self.carrera.nombre + ' - ' + self.unidad_curricular.nombre + ' - Sec.: ' + self.seccion.nombre
		
	end
end
