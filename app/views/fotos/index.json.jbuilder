json.array!(@fotos) do |foto|
  json.extract! foto, :id, :imagen
  json.url foto_url(foto, format: :json)
end
