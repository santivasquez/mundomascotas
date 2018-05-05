class SessionsController < ApplicationController
    layout "usuarios"
    
  def new
  
  end
  
  def create
    usuario = Usuario.find_by(correo: login_params[:correo].downcase)
    if usuario && usuario.authenticate(login_params[:clave])
      # Log the user in and redirect to the user's show page.
      log_in usuario
      redirect_to usuario
    else
      flash.now[:danger] = 'Clave o correo inválido'
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
  
  private 
  def login_params
    params.require(:session).permit(:correo, :clave)
  end
end
