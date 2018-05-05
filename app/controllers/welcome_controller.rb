class WelcomeController < ApplicationController
before_filter :authorize, :only => :admin

  def index
  @planes = Plane.all
  end
  
  def contactar
        if contactar_params[:correo]
            correo = contactar_params[:correo]
            nombre = contactar_params[:nombre]
            mensaje = contactar_params[:mensaje]
            asunto = contactar_params[:asunto]
            Contacto.enviar_contacto(correo,nombre,mensaje,asunto).deliver_now
        end
    redirect_to root_url
  end
  
  def reservar
    if reservar_params[:correo]
            correo = reservar_params[:correo]
            nombre = reservar_params[:nombre]
            celular = reservar_params[:celular]
            fecha_entrada = reservar_params[:fecha_entrada]
            fecha_salida = reservar_params[:fecha_salida]
            info_adicional = reservar_params[:info_adicional]
            Contacto.enviar_reserva(correo,nombre,celular,fecha_entrada,fecha_salida,info_adicional).deliver_now
    end
    flash[:success] = "Nos estaremos comunicando contigo"
    redirect_to root_url
  end
  
  def admin

  end
  
  private
  def contactar_params
      params.require(:correo).permit(:asunto, :nombre, :correo, :mensaje)
    end
    
  def reservar_params
    params.require(:reserva).permit(:celular, :nombre, :correo, :fecha_entrada, :fecha_salida, :info_adicional)
  end 
end
