# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Usuario
Usuario.create(nombre: 'Sebastian', apellido: 'Lopez', tipo: 'usuario', telefono:'2222222', correo: 'slopezv@platinosoftware.com', cedula: '123', password:'empresarial123', password_confirmation: 'empresarial123', estado: 'activo' )
Usuario.create(nombre: 'SebastianAdmin', apellido: 'Lopez', tipo: 'administrador', telefono:'2222222', correo: 'slopezv@platinosoftware1.com', cedula: '1234', password:'empresarial123', password_confirmation: 'empresarial123', estado: 'activo' )
Plane.create(tipo: 'Hotel y guardería', texto: 'Todos los mundos a su disposición')
Plane.create(tipo: 'Hotel y guardería', texto: '10% de descuento por más de cinco días continuos')
Plane.create(tipo: 'Hotel y guardería', texto: '15% de descuento por más de diez días continuos')
Plane.create(tipo: 'Hotel y guardería', texto: 'Los mejores profesionales a su servicio')
Plane.create(tipo: 'Hotel y guardería', texto: 'Cámaras en vivo las 24 horas')
Plane.create(tipo: 'Colegio', texto: 'Nosotros pasaremos por tu amiguito a su casa')
Plane.create(tipo: 'Colegio', texto: 'Plan 1 día semanal (4 días/mes)')
Plane.create(tipo: 'Colegio', texto: 'Plan 2 días semana (8 días/mes)')
Plane.create(tipo: 'Colegio', texto: 'Plan 3 días semana (12 días/mes)')
Plane.create(tipo: 'Colegio', texto: 'Plan 4 días semana (16 días/mes)')
Plane.create(tipo: 'Colegio', texto: 'Plan 5 días semana (20 días/mes)')
Plane.create(tipo: 'Peluquería y Spa', texto: 'Disminuye los malos olores en casa')
Plane.create(tipo: 'Peluquería y Spa', texto: 'Productos que cuidan el pelaje de tu peludo')
Plane.create(tipo: 'Peluquería y Spa', texto: 'Personal altamente especializado y calificado')
Plane.create(tipo: 'Peluquería y Spa', texto: 'Hidroterapia')
Plane.create(tipo: 'Peluquería y Spa', texto: 'Masajes terapéuticos y de relajación para tu amiguito')
Plane.create(tipo: 'Día de Sol', texto: 'No redimible')
Plane.create(tipo: 'Día de Sol', texto: 'No acumulable')
Plane.create(tipo: 'Día de Sol', texto: 'Un día como máximo para vivir mundo mascotas')
Plane.create(tipo: 'Día de Sol', texto: 'Los mejores profesionales a tu servicio')
Plane.create(tipo: 'Día de Sol', texto: 'Válido unicamente de lunes a viernes (No incluye festivos)')