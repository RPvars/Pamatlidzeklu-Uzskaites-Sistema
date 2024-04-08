class PamatlidzeklisController < ApplicationController
  before_action :set_pamatlidzekli, only: %i[ show edit update destroy ]

  # GET /pamatlidzeklis or /pamatlidzeklis.json
  def index
    @pamatlidzeklis = Pamatlidzekli.all
  end

  # GET /pamatlidzeklis/1 or /pamatlidzeklis/1.json
  def show
  end

  # GET /pamatlidzeklis/new
  def new
    @pamatlidzekli = Pamatlidzekli.new
  end

  # GET /pamatlidzeklis/1/edit
  def edit
  end

  # POST /pamatlidzeklis or /pamatlidzeklis.json
  def create
    @pamatlidzekli = Pamatlidzekli.new(pamatlidzekli_params)

    respond_to do |format|
      if @pamatlidzekli.save
        format.html { redirect_to pamatlidzekli_path(@pamatlidzekli), notice: "Pamatlidzekli was successfully created." }
        format.json { render :show, status: :created, location: @pamatlidzekli }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pamatlidzekli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pamatlidzeklis/1 or /pamatlidzeklis/1.json
  def update
    respond_to do |format|
      if @pamatlidzekli.update(pamatlidzekli_params)
        format.html { redirect_to pamatlidzekli_path(@pamatlidzekli), notice: "Pamatlidzekli was successfully updated." }
        format.json { render :show, status: :ok, location: @pamatlidzekli }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pamatlidzekli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pamatlidzeklis/1 or /pamatlidzeklis/1.json
  def destroy
    @pamatlidzekli.destroy!

    respond_to do |format|
      format.html { redirect_to pamatlidzeklis_url, notice: "Pamatlidzekli was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pamatlidzekli
      @pamatlidzekli = Pamatlidzekli.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pamatlidzekli_params
      params.require(:pamatlidzekli).permit(:nosaukums, :razotajs, :modelis, :serijas_nummurs, :kategorija_id, :apraksts, :iegades_datums, :garantija, :izmaksas, :qrcode)
    end
end
