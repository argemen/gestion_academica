class PlanesEvaluacionesController < ApplicationController
  before_action :set_plan_evaluacion, only: [:show, :edit, :update, :destroy]

  # GET /planes_evaluacion
  # GET /planes_evaluacion.json
  def index
    @planes_evaluaciones = PlanEvaluacion.all
  end

  # GET /planes_evaluacion/1
  # GET /planes_evaluacion/1.json
  def show
  end

  # GET /planes_evaluacion/new
  def detalle
    #se obtiene informacion sobre la planificacion
    @planificacion = Planificacion.find_by_id(params[:id])
    
    render layout: false
  end

  # GET /planes_evaluacion/new
  def new
    @plan_evaluacion = PlanEvaluacion.new
    #se obtiene informacion sobre la planificacion
    @planificacion = Planificacion.find_by_id(params[:id])
    
    render layout: false
  end

  # GET /planes_evaluacion/1/edit
  def edit
  end

  # POST /planes_evaluacion
  # POST /planes_evaluacion.json
  def create
    @plan_evaluacion = PlanEvaluacion.new(plan_evaluacion_params)

    respond_to do |format|
      if @plan_evaluacion.save
        format.html { redirect_to planificaciones_path, notice: 'Plan Guardado con exito' }
        format.json { render :index, status: :created, location: @planificacion }
      else
        format.html { render :new }
        format.json { render json: @plan_evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planes_evaluacion/1
  # PATCH/PUT /planes_evaluacion/1.json
  def update
    respond_to do |format|
      if @plan_evaluacion.update(plan_evaluacion_params)
        format.html { redirect_to @plan_evaluacion, notice: 'Plan evaluacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_evaluacion }
      else
        format.html { render :edit }
        format.json { render json: @plan_evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planes_evaluacion/1
  # DELETE /planes_evaluacion/1.json
  def destroy
    @plan_evaluacion.destroy
    respond_to do |format|
      format.html { redirect_to planes_evaluacion_url, notice: 'Plan evaluacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_evaluacion
      @plan_evaluacion = PlanEvaluacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_evaluacion_params
      params.require(:plan_evaluacion).permit(:planificacion_id, :evaluacion_id, :fecha, :puntuacion)
    end
end
