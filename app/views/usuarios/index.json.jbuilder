json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :tipo, :telefono, :correo, :mascota, :cedula, :estado
  json.url usuario_url(usuario, format: :json)
end
