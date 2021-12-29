class Geral::VeiculosController < ApplicationController
  before_action :set_geral_veiculo, only: %i[ show edit update destroy ]

  # GET /geral/veiculos or /geral/veiculos.json
  def index
    @geral_veiculos = Geral::Veiculo.all
  end

  # GET /geral/veiculos/1 or /geral/veiculos/1.json
  def show
  end

  # GET /geral/veiculos/new
  def new
    @geral_veiculo = Geral::Veiculo.new
  end

  # GET /geral/veiculos/1/edit
  def edit
  end

  # POST /geral/veiculos or /geral/veiculos.json
  def create
    @geral_veiculo = Geral::Veiculo.new(geral_veiculo_params)

    respond_to do |format|
      if @geral_veiculo.save
        format.html { redirect_to @geral_veiculo, notice: "Veiculo was successfully created." }
        format.json { render :show, status: :created, location: @geral_veiculo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @geral_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geral/veiculos/1 or /geral/veiculos/1.json
  def update
    respond_to do |format|
      if @geral_veiculo.update(geral_veiculo_params)
        format.html { redirect_to @geral_veiculo, notice: "Veiculo was successfully updated." }
        format.json { render :show, status: :ok, location: @geral_veiculo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @geral_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geral/veiculos/1 or /geral/veiculos/1.json
  def destroy
    @geral_veiculo.destroy

    respond_to do |format|
      format.html { redirect_to geral_veiculos_url, notice: "Veiculo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geral_veiculo
      @geral_veiculo = Geral::Veiculo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geral_veiculo_params
      params.require(:geral_veiculo).permit(:name_carro_id, :ano, :placa, :renavam)
    end
end
