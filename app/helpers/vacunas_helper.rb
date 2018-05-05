module VacunasHelper
    def nombre_mascota(id)
        mascota = Mascotum.find_by(id: id)
        unless mascota == nil
            return mascota.nombre
        else
            return ""
        end
    end
end
