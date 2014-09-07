json.array!(@semestres) do |semestre|
  json.extract! semestre, :id, :nombre
  json.url semestre_url(semestre, format: :json)
end
