class Planificacion < ActiveRecord::Base
	belongs_to :semestre
	belongs_to :carrera
	belongs_to :unidad_curricular
	belongs_to :seccion
end
