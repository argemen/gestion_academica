class EvaluacionesController < ApplicationController
  before_action :set_evaluacion, only: [:show, :edit, :update, :destroy]

  # GET /evaluaciones
  # GET /evaluaciones.json
  def index
    @evaluaciones = Evaluacion.all
  end

  # GET /evaluaciones/1
  # GET /evaluaciones/1.json
  def show
    render layout: false
  end

  # GET /evaluaciones/new
  def new
    @evaluacion = Evaluacion.new
    render layout: false
  end

  # GET /evaluaciones/1/edit
  def edit
    render layout: false
  end

  # POST /evaluaciones
  # POST /evaluaciones.json
  def create
    @evaluacion = Evaluacion.new(evaluacion_params)

    respond_to do |format|
      if @evaluacion.save
        format.html { redirect_to evaluaciones_path, notice: 'Evaluacion fue almacenada con exito' }
        format.json { render :show, status: :created, location: @evaluacion }
      else
        format.html { render :new }
        format.json { render json: @evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluaciones/1
  # PATCH/PUT /evaluaciones/1.json
  def update
    respond_to do |format|
      if @evaluacion.update(evaluacion_params)
        format.html { redirect_to evaluaciones_path, notice: 'Evaluacion fue actualizada con exito' }
        format.json { render :show, status: :ok, location: @evaluacion }
      else
        format.html { render :edit }
        format.json { render json: @evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluaciones/1
  # DELETE /evaluaciones/1.json
  def destroy
    @evaluacion.destroy
    respond_to do |format|
      format.html { redirect_to evaluaciones_url, notice: 'Evaluacion fue eliminada con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluacion
      @evaluacion = Evaluacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluacion_params
      params.require(:evaluacion).permit(:nombre)
    end
end
