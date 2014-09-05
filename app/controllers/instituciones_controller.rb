class InstitucionesController < ApplicationController
  before_action :set_institucion, only: [:show, :edit, :update, :destroy]

  # GET /instituciones
  # GET /instituciones.json
  def index
    @instituciones = Institucion.all
  end

  # GET /instituciones/1
  # GET /instituciones/1.json
  def show
    render :layout => false
  end

  # GET /instituciones/new
  def new
    @institucion = Institucion.new
    render :layout => false
  end

  # GET /instituciones/1/edit
  def edit
    render :layout => false
  end

  # POST /instituciones
  # POST /instituciones.json
  def create
    @institucion = Institucion.new(institucion_params)

    respond_to do |format|
      if @institucion.save
        format.html { redirect_to instituciones_path, notice: 'Institucion almacenada con exito' }
        format.json { render :index, status: :created}
      else
        format.html { render :new }
        format.json { render json: @institucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instituciones/1
  # PATCH/PUT /instituciones/1.json
  def update
    respond_to do |format|
      if @institucion.update(institucion_params)
        format.html { redirect_to @institucion, notice: 'Institucion was successfully updated.' }
        format.json { render :show, status: :ok, location: @institucion }
      else
        format.html { render :edit }
        format.json { render json: @institucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instituciones/1
  # DELETE /instituciones/1.json
  def destroy
    @institucion.destroy
    respond_to do |format|
      format.html { redirect_to instituciones_url, notice: 'Institucion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institucion
      @institucion = Institucion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institucion_params
      params.require(:institucion).permit(:nombre, :siglas)
    end
end
