class PlanEvaluacion < ActiveRecord::Base
	belongs_to :evaluacion
	belongs_to :planificacion
end
