class KategorijasController < ApplicationController
  before_action :set_kategorija, only: %i[ show edit update destroy ]
  

  # GET /kategorijas or /kategorijas.json
  def index
    @kategorijas = Kategorija.all
    authorize Kategorija
  end

  # GET /kategorijas/1 or /kategorijas/1.json
  def show
    authorize Kategorija
  end

  # GET /kategorijas/new
  def new
    @kategorija = Kategorija.new
    authorize Kategorija
  end

  # GET /kategorijas/1/edit
  def edit
    authorize Kategorija
  end

  # POST /kategorijas or /kategorijas.json
  def create
    @kategorija = Kategorija.new(kategorija_params)
    authorize @kategorija

    respond_to do |format|
      if @kategorija.save
        format.html { redirect_to kategorija_path(@kategorija), notice: "Kategorija was successfully created." }
        format.json { render :show, status: :created, location: @kategorija }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kategorija.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kategorijas/1 or /kategorijas/1.json
  def update
    authorize @kategorija

    respond_to do |format|
      if @kategorija.update(kategorija_params)
        format.html { redirect_to kategorija_path(@kategorija), notice: "Kategorija was successfully updated." }
        format.json { render :show, status: :ok, location: @kategorija }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kategorija.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kategorijas/1 or /kategorijas/1.json
  def destroy
    authorize @kategorija
    
    @kategorija.destroy!

    respond_to do |format|
      format.html { redirect_to kategorijas_url, notice: "Kategorija was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kategorija
      @kategorija = Kategorija.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kategorija_params
      params.require(:kategorija).permit(:nosaukums, :apraksts)
    end
end
