module SessionsHelper

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
   # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Usuario.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  def authorize
   usuario = current_user
   if usuario.nil?
      flash[:danger] = 'Inicie sesión Primero'
      redirect_to root_path
   else
     if usuario.tipo != "administrador"
      flash[:danger] = 'Privilegios insuficientes, contacte con el administrador del sistema'
      redirect_to root_path
     else
        return true
     end
   end
  end
  
end
