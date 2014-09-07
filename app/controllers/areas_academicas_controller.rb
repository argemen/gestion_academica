class AreasAcademicasController < ApplicationController
  before_action :set_area_academica, only: [:show, :edit, :update, :destroy]

  #accion autocompletar
  autocomplete :area_academica, :nombre, :display_value => :nombre do |items|

    respond_to do |format|
      format.json { render :json => @items }
    end
  end

  # GET /areas_academicas
  # GET /areas_academicas.json
  def index
    @areas_academicas = AreaAcademica.all
  end

  # GET /areas_academicas/1
  # GET /areas_academicas/1.json
  def show
    render layout: false
  end

  # GET /areas_academicas/new
  def new
    @area_academica = AreaAcademica.new
    render layout: false
  end

  # GET /areas_academicas/1/edit
  def edit
    render layout: false
  end

  # POST /areas_academicas
  # POST /areas_academicas.json
  def create
    @area_academica = AreaAcademica.new(area_academica_params)
    #debug (@area_academica)
    respond_to do |format|
      if @area_academica.save
        format.html { redirect_to areas_academicas_path, notice: 'Area academica fue almacenado con exito' }
        format.json { render :index, status: :created, location: @area_academica }
      else
        format.html { render :new }
        format.json { render json: @area_academica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /areas_academicas/1
  # PATCH/PUT /areas_academicas/1.json
  def update
    respond_to do |format|
      if @area_academica.update(area_academica_params)
        format.html { redirect_to areas_academicas_path, notice: 'Area academica fue actualizado con exito' }
        format.json { render :show, status: :ok, location: @area_academica }
      else
        format.html { render :edit }
        format.json { render json: @area_academica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /areas_academicas/1
  # DELETE /areas_academicas/1.json
  def destroy
    @area_academica.destroy
    respond_to do |format|
      format.html { redirect_to areas_academicas_url, notice: 'Area academica fue eliminado con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_academica
      @area_academica = AreaAcademica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_academica_params
       params.require(:area_academica).permit(:institucion_id, :nombre, :telefono)
    end
end
