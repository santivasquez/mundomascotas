class VacunasController < ApplicationController
  before_action :set_vacuna, only: [:show, :update, :destroy]
  before_action :set_mascota, only: [:new, :index, :create]
  layout "vacunas"
  # GET /vacunas
  # GET /vacunas.json
  def index
    @vacunas = Vacuna.where(mascota_id: @mascota.id)
  end

  # GET /vacunas/1
  # GET /vacunas/1.json
  def show
  end

  # GET /vacunas/new
  def new
    @vacuna = Vacuna.new
  end

  # POST /vacunas
  # POST /vacunas.json
  def create
    @vacuna = Vacuna.new(vacuna_params)
    @vacuna.mascota_id = @mascota.id
    respond_to do |format|
      if @vacuna.save
        format.html { redirect_to @vacuna, notice: 'Vacuna Agregada exitosamente' }
        format.json { render :show, status: :created, location: @vacuna }
      else
        format.html { render :new }
        format.json { render json: @vacuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacunas/1
  # PATCH/PUT /vacunas/1.json
  def update
    respond_to do |format|
      if @vacuna.update(vacuna_params)
        format.html { redirect_to @vacuna, notice: 'Vacuna was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacuna }
      else
        format.html { render :edit }
        format.json { render json: @vacuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacunas/1
  # DELETE /vacunas/1.json
  def destroy
    @vacuna.destroy
    respond_to do |format|
      format.html { redirect_to mascota_url, notice: 'Vacuna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_mascota
      @mascota = Mascotum.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_vacuna
      @vacuna = Vacuna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacuna_params
      params.require(:vacuna).permit(:nombre, :mascota_id)
    end
end
