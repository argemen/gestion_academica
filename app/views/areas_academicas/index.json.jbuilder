json.array!(@areas_academicas) do |area_academica|
  json.extract! area_academica, :id
  json.url area_academica_url(area_academica, format: :json)
end
