class Geral::VeiculoPessoasController < ApplicationController
  before_action :set_geral_veiculo_pessoa, only: %i[ show edit update destroy ]

  # GET /geral/veiculo_pessoas or /geral/veiculo_pessoas.json
  def index
    @geral_veiculo_pessoas = Geral::VeiculoPessoa.all
  end

  # GET /geral/veiculo_pessoas/1 or /geral/veiculo_pessoas/1.json
  def show
  end

  # GET /geral/veiculo_pessoas/new
  def new
    @geral_veiculo_pessoa = Geral::VeiculoPessoa.new
  end

  # GET /geral/veiculo_pessoas/1/edit
  def edit
  end

  # POST /geral/veiculo_pessoas or /geral/veiculo_pessoas.json
  def create
    @geral_veiculo_pessoa = Geral::VeiculoPessoa.new(geral_veiculo_pessoa_params)

    respond_to do |format|
      if @geral_veiculo_pessoa.save
        format.html { redirect_to @geral_veiculo_pessoa, notice: "Veiculo pessoa was successfully created." }
        format.json { render :show, status: :created, location: @geral_veiculo_pessoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @geral_veiculo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geral/veiculo_pessoas/1 or /geral/veiculo_pessoas/1.json
  def update
    respond_to do |format|
      if @geral_veiculo_pessoa.update(geral_veiculo_pessoa_params)
        format.html { redirect_to @geral_veiculo_pessoa, notice: "Veiculo pessoa was successfully updated." }
        format.json { render :show, status: :ok, location: @geral_veiculo_pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @geral_veiculo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geral/veiculo_pessoas/1 or /geral/veiculo_pessoas/1.json
  def destroy
    @geral_veiculo_pessoa.destroy

    respond_to do |format|
      format.html { redirect_to geral_veiculo_pessoas_url, notice: "Veiculo pessoa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geral_veiculo_pessoa
      @geral_veiculo_pessoa = Geral::VeiculoPessoa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geral_veiculo_pessoa_params
      params.require(:geral_veiculo_pessoa).permit(:veiculo_id, :pessoa_id)
    end
end
