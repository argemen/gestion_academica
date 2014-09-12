# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
   inflect.irregular 'institucion', 'instituciones'
   inflect.irregular 'area_academica', 'areas_academicas'
   inflect.irregular 'seccion', 'secciones'
   inflect.irregular 'evaluacion', 'evaluaciones'
   inflect.irregular 'unidad_curricular', 'unidades_curriculares'
   inflect.irregular 'planificacion', 'planificaciones'
   inflect.irregular 'plan_evaluacion', 'planes_evaluaciones'
#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
