class Geral::ClientsController < ApplicationController
  before_action :set_geral_client, only: %i[ show edit update destroy ]

  # GET /geral/clients or /geral/clients.json
  def index
    @geral_clients = Geral::Client.all
  end

  # GET /geral/clients/1 or /geral/clients/1.json
  def show
  end

  # GET /geral/clients/new
  def new
    @geral_client = Geral::Client.new
  end

  # GET /geral/clients/1/edit
  def edit
  end

  # POST /geral/clients or /geral/clients.json
  def create
    @geral_client = Geral::Client.new(geral_client_params)

    respond_to do |format|
      if @geral_client.save
        format.html { redirect_to geral_client_url(@geral_client), notice: "Client was successfully created." }
        format.json { render :show, status: :created, location: @geral_client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @geral_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geral/clients/1 or /geral/clients/1.json
  def update
    respond_to do |format|
      if @geral_client.update(geral_client_params)
        format.html { redirect_to geral_client_url(@geral_client), notice: "Client was successfully updated." }
        format.json { render :show, status: :ok, location: @geral_client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @geral_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geral/clients/1 or /geral/clients/1.json
  def destroy
    @geral_client.destroy

    respond_to do |format|
      format.html { redirect_to geral_clients_url, notice: "Client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geral_client
      @geral_client = Geral::Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geral_client_params
      params.require(:geral_client).permit(:name, :company_name, :document, :email, :phone, :user_id, :notes, :status)
    end
end
