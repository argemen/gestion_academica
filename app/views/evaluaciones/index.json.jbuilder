json.array!(@evaluaciones) do |evaluacion|
  json.extract! evaluacion, :id, :nombre
  json.url evaluacion_url(evaluacion, format: :json)
end
