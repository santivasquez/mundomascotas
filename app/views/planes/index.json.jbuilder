json.array!(@planes) do |plane|
  json.extract! plane, :id, :tipo, :texto
  json.url plane_url(plane, format: :json)
end
