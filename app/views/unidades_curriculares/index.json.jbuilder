json.array!(@unidades_curriculares) do |unidad_curricular|
  json.extract! unidad_curricular, :id, :nombre
  json.url unidad_curricular_url(unidad_curricular, format: :json)
end
