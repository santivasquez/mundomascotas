class ReservasController < ApplicationController
  before_action :authorize, except: [:update_Mascotas]
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]
   before_action :set_usuarios, only: [:show, :edit, :update, :new, :update, :create, :index]
  layout "usuarios"
  
  def update_Mascotas
    @mascotas = Mascotum.where("dueño = ?", params[:usuario_id].to_i)
    respond_to do |format|
      format.js
    end
  end
  
  # GET /reservas
  # GET /reservas.json
  def index
    @reservas = Reserva.all
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show
  end

  # GET /reservas/new
  def new
    @mascotas = Mascotum.where("dueño = ?",Usuario.first.id)
    @reserva = Reserva.new
  end

  # GET /reservas/1/edit
  def edit
  @mascotas = Mascotum.where("dueño = ?",@reserva.usuario_id)
  
  end

  # POST /reservas
  # POST /reservas.json
  def create
    @reserva = Reserva.new(reserva_params)

    respond_to do |format|
      if @reserva.save
        format.html { redirect_to @reserva, notice: 'Reserva creada exitosamente' }
        format.json { render :show, status: :created, location: @reserva }
      else
        format.html { render :new }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas/1
  # PATCH/PUT /reservas/1.json
  def update
    respond_to do |format|
      if @reserva.update(reserva_params)
          format.html { redirect_to @reserva, notice: 'Reserva Actualizada' }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
      
  end

  # DELETE /reservas/1
  # DELETE /reservas/1.json
  def destroy
    @reserva.destroy
    respond_to do |format|
        format.html { redirect_to reservas_url, notice: 'Se ha eliminado la reserva' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    def set_mascotum
      @mascotum = Mascotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      params.require(:reserva).permit(:descripcion, :estado, :mascota_id, :usuario_id, :fecha_entrada, :fecha_salida)
    end
    
    def set_usuarios
      @usuarios = Usuario.where(tipo: 'usuario')
    end
end
