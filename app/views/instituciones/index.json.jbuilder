json.array!(@instituciones) do |institucion|
  json.extract! institucion, :id, :nombre, :siglas
  json.url institucion_url(institucion, format: :json)
end
