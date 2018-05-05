json.array!(@vacunas) do |vacuna|
  json.extract! vacuna, :id, :nombre, :mascota_id
  json.url vacuna_url(vacuna, format: :json)
end
