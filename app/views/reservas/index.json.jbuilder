json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :descripcion, :estado, :mascota_id, :usuario_id, :fecha_entrada, :fecha_salida
  json.url reserva_url(reserva, format: :json)
end
