json.array!(@mascota) do |mascotum|
  json.extract! mascotum, :id, :id_Mas, :nombre, :dueño, :entrada, :salida, :vacunas, :raza, :edad, :estado
  json.url mascotum_url(mascotum, format: :json)
end
