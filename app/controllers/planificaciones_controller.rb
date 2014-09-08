class PlanificacionesController < ApplicationController
  before_action :set_planificacion, only: [:show, :edit, :update, :destroy]

  # GET /planificaciones
  # GET /planificaciones.json
  def index
    @planificaciones = Planificacion.all
  end

  # GET /planificaciones/1
  # GET /planificaciones/1.json
  def show
    render layout: false
  end

  # GET /planificaciones/new
  def new
    @planificacion = Planificacion.new
    render layout: false
  end

  # GET /planificaciones/1/edit
  def edit
    render layout: false
  end

  # POST /planificaciones
  # POST /planificaciones.json
  def create
    @planificacion = Planificacion.new(planificacion_params)

    respond_to do |format|
      if @planificacion.save
        format.html { redirect_to planificaciones_path, notice: 'Planificacion fue almacenada con exito' }
        format.json { render :index, status: :created, location: @planificacion }
      else
        format.html { render :new }
        format.json { render json: @planificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planificaciones/1
  # PATCH/PUT /planificaciones/1.json
  def update
    respond_to do |format|
      if @planificacion.update(planificacion_params)
        format.html { redirect_to planificaciones_path, notice: 'Planificacion fue actualizada con exito' }
        format.json { render :index, status: :ok, location: @planificacion }
      else
        format.html { render :edit }
        format.json { render json: @planificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planificaciones/1
  # DELETE /planificaciones/1.json
  def destroy
    @planificacion.destroy
    respond_to do |format|
      format.html { redirect_to planificaciones_url, notice: 'Planificacion fue eliminada con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planificacion
      @planificacion = Planificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planificacion_params
      params.require(:planificacion).permit(:semestre_id, :carrera_id, :unidad_curricular_id, :seccion_id, :lapsos)
    end
end
