class UnidadesCurricularesController < ApplicationController
  before_action :set_unidad_curricular, only: [:show, :edit, :update, :destroy]

  # GET /unidades_curriculares
  # GET /unidades_curriculares.json
  def index
    @unidades_curriculares = UnidadCurricular.all
  end

  # GET /unidades_curriculares/1
  # GET /unidades_curriculares/1.json
  def show
    render layout: false
  end

  # GET /unidades_curriculares/new
  def new
    @unidad_curricular = UnidadCurricular.new
    render layout: false
  end

  # GET /unidades_curriculares/1/edit
  def edit
    render layout: false
  end

  # POST /unidades_curriculares
  # POST /unidades_curriculares.json
  def create
    @unidad_curricular = UnidadCurricular.new(unidad_curricular_params)

    respond_to do |format|
      if @unidad_curricular.save
        format.html { redirect_to unidades_curriculares_path, notice: 'Unidad curricular almacenada con exito' }
        format.json { render :index, status: :created, location: @unidad_curricular }
      else
        format.html { render :new }
        format.json { render json: @unidad_curricular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidades_curriculares/1
  # PATCH/PUT /unidades_curriculares/1.json
  def update
    respond_to do |format|
      if @unidad_curricular.update(unidad_curricular_params)
        format.html { redirect_to unidades_curriculares_path, notice: 'Unidad curricular fue actualizada con exito' }
        format.json { render :index, status: :ok, location: @unidad_curricular }
      else
        format.html { render :edit }
        format.json { render json: @unidad_curricular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades_curriculares/1
  # DELETE /unidades_curriculares/1.json
  def destroy
    @unidad_curricular.destroy
    respond_to do |format|
      format.html { redirect_to unidades_curriculares_url, notice: 'Unidad curricular fue eliminada con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidad_curricular
      @unidad_curricular = UnidadCurricular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidad_curricular_params
      params.require(:unidad_curricular).permit(:nombre)
    end
end
