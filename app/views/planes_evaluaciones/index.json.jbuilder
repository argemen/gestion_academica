json.array!(@planes_evaluacion) do |plan_evaluacion|
  json.extract! plan_evaluacion, :id, :planificacion_id, :evaluacion_id, :fecha, :puntuacion
  json.url plan_evaluacion_url(plan_evaluacion, format: :json)
end
