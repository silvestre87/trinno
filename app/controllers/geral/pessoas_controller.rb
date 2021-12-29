class Geral::PessoasController < ApplicationController
  before_action :set_geral_pessoa, only: %i[ show edit update destroy ]

  # GET /geral/pessoas or /geral/pessoas.json
  def index
    @geral_pessoas = Geral::Pessoa.all.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /geral/pessoas/1 or /geral/pessoas/1.json
  def show
  end

  # GET /geral/pessoas/new
  def new
    @geral_pessoa = Geral::Pessoa.new
  end

  # GET /geral/pessoas/1/edit
  def edit
  end

  # POST /geral/pessoas or /geral/pessoas.json
  def create
    @geral_pessoa = Geral::Pessoa.new(geral_pessoa_params)

    respond_to do |format|
      if @geral_pessoa.save
        format.html { redirect_to @geral_pessoa, notice: "Pessoa was successfully created." }
        format.json { render :show, status: :created, location: @geral_pessoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @geral_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geral/pessoas/1 or /geral/pessoas/1.json
  def update
    respond_to do |format|
      if @geral_pessoa.update(geral_pessoa_params)
        format.html { redirect_to @geral_pessoa, notice: "Pessoa was successfully updated." }
        format.json { render :show, status: :ok, location: @geral_pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @geral_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geral/pessoas/1 or /geral/pessoas/1.json
  def destroy
    @geral_pessoa.destroy

    respond_to do |format|
      format.html { redirect_to geral_pessoas_url, notice: "Pessoa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geral_pessoa
      @geral_pessoa = Geral::Pessoa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geral_pessoa_params
      params.require(:geral_pessoa).permit(:name, :cpf, :rg, :email, :telefone, :user_id, :status)
    end
end
