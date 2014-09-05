json.array!(@carreras) do |carrera|
  json.extract! carrera, :id, :area_academica, :nombre, :telefono
  json.url carrera_url(carrera, format: :json)
end
