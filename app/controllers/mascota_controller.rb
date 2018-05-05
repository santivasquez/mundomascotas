class MascotaController < ApplicationController
  before_action :set_mascotum, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  before_action :set_usuarios, only: [:show, :edit, :update, :new, :update, :create, :index]

  layout "usuarios"
  # GET /mascota
  # GET /mascota.json
  def index
    @mascota = Mascotum.all
  end

  # GET /mascota/1
  # GET /mascota/1.json
  def show
    @usuarios = Usuario.where(tipo: 'usuario')
  end

  # GET /mascota/new
  def new
    @mascotum = Mascotum.new
  end

  # GET /mascota/1/edit
  def edit
  @usuarios = Usuario.where(tipo: 'usuario')
  end

  # POST /mascota
  # POST /mascota.json
  def create
    @mascotum = Mascotum.new(mascotum_params)
    @mascotum.entrada = ""+ params[:entrada][:day] +'/' +params[:entrada][:month] +'/' +params[:entrada][:year]
    @mascotum.salida = ""+ params[:salida][:day] +'/' +params[:salida][:month] +'/' +params[:salida][:year]
    respond_to do |format|
      if @mascotum.save
        format.html { redirect_to @mascotum, notice: 'Mascota creada exitosamente' }
        format.json { render :show, status: :created, location: @mascotum }
      else
        format.html { render :new }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mascota/1
  # PATCH/PUT /mascota/1.json
  def update
    respond_to do |format|
      @mascotum.entrada = ""+ params[:entrada][:day] +'/' +params[:entrada][:month] +'/' +params[:entrada][:year]
      @mascotum.salida = ""+ params[:salida][:day] +'/' +params[:salida][:month] +'/' +params[:salida][:year]
      if @mascotum.update(mascotum_params)
        format.html { redirect_to @mascotum, notice: 'Mascota actualizada exitosamente' }
        format.json { render :show, status: :ok, location: @mascotum }
      else
        format.html { render :edit }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mascota/1
  # DELETE /mascota/1.json
  def destroy
    @mascotum.destroy
    respond_to do |format|
      format.html { redirect_to mascota_url, notice: 'Mascota borrada exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mascotum
      @mascotum = Mascotum.find(params[:id])
    end
    
    def set_usuarios
      @usuarios = Usuario.where(tipo: 'usuario')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mascotum_params
      params.require(:mascotum).permit(:id_Mas, :nombre, :dueño, :entrada, :salida, :vacunas, :raza, :edad, :estado)
    end
end
