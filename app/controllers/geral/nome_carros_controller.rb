class Geral::NomeCarrosController < ApplicationController
  before_action :set_geral_nome_carro, only: %i[ show edit update destroy ]

  # GET /geral/nome_carros or /geral/nome_carros.json
  def index
    @geral_nome_carros = Geral::NomeCarro.all
  end

  # GET /geral/nome_carros/1 or /geral/nome_carros/1.json
  def show
  end

  # GET /geral/nome_carros/new
  def new
    @geral_nome_carro = Geral::NomeCarro.new
  end

  # GET /geral/nome_carros/1/edit
  def edit
  end

  # POST /geral/nome_carros or /geral/nome_carros.json
  def create
    @geral_nome_carro = Geral::NomeCarro.new(geral_nome_carro_params)

    respond_to do |format|
      if @geral_nome_carro.save
        format.html { redirect_to @geral_nome_carro, notice: "Nome carro was successfully created." }
        format.json { render :show, status: :created, location: @geral_nome_carro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @geral_nome_carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geral/nome_carros/1 or /geral/nome_carros/1.json
  def update
    respond_to do |format|
      if @geral_nome_carro.update(geral_nome_carro_params)
        format.html { redirect_to @geral_nome_carro, notice: "Nome carro was successfully updated." }
        format.json { render :show, status: :ok, location: @geral_nome_carro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @geral_nome_carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geral/nome_carros/1 or /geral/nome_carros/1.json
  def destroy
    @geral_nome_carro.destroy

    respond_to do |format|
      format.html { redirect_to geral_nome_carros_url, notice: "Nome carro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geral_nome_carro
      @geral_nome_carro = Geral::NomeCarro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geral_nome_carro_params
      params.require(:geral_nome_carro).permit(:marca_id, :name)
    end
end
