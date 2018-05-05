module UsuariosHelper
 def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.correo.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.nombre, class: "gravatar")
  end
  
  def mascotasATexto(mascotas,usuarioID)
    strMascota = ""
    if(mascotas != nil)
      mascotas.each do |mascota|
        if(mascota.dueño == usuarioID)
          strMascota += (mascota.id_Mas + ' ')
        end
      end
    end
    return strMascota
  end
end
