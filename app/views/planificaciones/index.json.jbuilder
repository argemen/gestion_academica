json.array!(@planificaciones) do |planificacion|
  json.extract! planificacion, :id, :periodo_lectivo_id, :area_academica_id, :unidad_curricular_id, :seccion_id, :lapsos
  json.url planificacion_url(planificacion, format: :json)
end
