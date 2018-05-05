module ApplicationHelper
 def dueno_correo(id)
        dueno = Usuario.find_by(id: id)
        if dueno == nil
            return ""
        else
            return dueno.correo
        end
    end
    def idMas(idBDMascota)
        mascota = Mascotum.find_by(id: idBDMascota)
        if mascota == nil
            return ""
        else
            return mascota.id_Mas
        end
    end
end
