class SemestresController < ApplicationController
  before_action :set_semestre, only: [:show, :edit, :update, :destroy]

  # GET /semestres
  # GET /semestres.json
  def index
    @semestres = Semestre.all
  end

  # GET /semestres/1
  # GET /semestres/1.json
  def show
    render layout: false
  end

  # GET /semestres/new
  def new
    @semestre = Semestre.new
    render layout: false
  end

  # GET /semestres/1/edit
  def edit
    render layout: false
  end

  # POST /semestres
  # POST /semestres.json
  def create
    @semestre = Semestre.new(semestre_params)

    respond_to do |format|
      if @semestre.save
        format.html { redirect_to semestres_path, notice: 'Semestre fue almacenado con exito' }
        format.json { render :show, status: :created, location: @semestre }
      else
        format.html { render :new }
        format.json { render json: @semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semestres/1
  # PATCH/PUT /semestres/1.json
  def update
    respond_to do |format|
      if @semestre.update(semestre_params)
        format.html { redirect_to semestres_path, notice: 'Semestre fue actualizado con exito' }
        format.json { render :show, status: :ok, location: @semestre }
      else
        format.html { render :edit }
        format.json { render json: @semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semestres/1
  # DELETE /semestres/1.json
  def destroy
    @semestre.destroy
    respond_to do |format|
      format.html { redirect_to semestres_url, notice: 'Semestre fue eliminado con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semestre
      @semestre = Semestre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semestre_params
      params.require(:semestre).permit(:nombre)
    end
end
