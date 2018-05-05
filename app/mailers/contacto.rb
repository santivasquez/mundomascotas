class Contacto < ApplicationMailer
    def enviar_contacto(correo,nombre,mensaje,asunto)
        @correo = correo
        @nombre = nombre
        @mensaje = mensaje
        mail( to: ENV["MAIL_FOR"], subject: asunto)
    end
    
    def enviar_reserva(correo,nombre,celular,fecha_entrada,fecha_salida,info_adicional)
        @correo = correo
        @nombre = nombre
        @celular = celular
        @fecha_entrada = fecha_entrada
        @fecha_salida = fecha_salida
        @info_adicional = info_adicional
        Time.zone = 'Bogota'  # => "Bogota"
        @cuando = Time.zone.now 
        mail( to: ENV["MAIL_FOR"], subject: "Reserva realizada")
    end
end
