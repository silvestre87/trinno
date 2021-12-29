class Geral::MarcasController < ApplicationController
  before_action :set_geral_marca, only: %i[ show edit update destroy ]

  # GET /geral/marcas or /geral/marcas.json
  def index
    @geral_marcas = Geral::Marca.all
  end

  # GET /geral/marcas/1 or /geral/marcas/1.json
  def show
  end

  # GET /geral/marcas/new
  def new
    @geral_marca = Geral::Marca.new
  end

  # GET /geral/marcas/1/edit
  def edit
  end

  # POST /geral/marcas or /geral/marcas.json
  def create
    @geral_marca = Geral::Marca.new(geral_marca_params)

    respond_to do |format|
      if @geral_marca.save
        format.html { redirect_to @geral_marca, notice: "Marca was successfully created." }
        format.json { render :show, status: :created, location: @geral_marca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @geral_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geral/marcas/1 or /geral/marcas/1.json
  def update
    respond_to do |format|
      if @geral_marca.update(geral_marca_params)
        format.html { redirect_to @geral_marca, notice: "Marca was successfully updated." }
        format.json { render :show, status: :ok, location: @geral_marca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @geral_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geral/marcas/1 or /geral/marcas/1.json
  def destroy
    @geral_marca.destroy

    respond_to do |format|
      format.html { redirect_to geral_marcas_url, notice: "Marca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geral_marca
      @geral_marca = Geral::Marca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geral_marca_params
      params.require(:geral_marca).permit(:name)
    end
end
