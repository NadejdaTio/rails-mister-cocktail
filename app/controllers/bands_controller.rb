class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update, :destroy]

  # GET /bands
  # GET /bands.json
  def index
    @bands = Band.all
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
  end

  # GET /bands/new
  def new
    @band = Band.new
  end

  # GET /bands/1/edit
  def edit
  end

  # POST /bands
  # POST /bands.json
  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  # PATCH/PUT /bands/1
  # PATCH/PUT /bands/1.json
  def update
    @band.update(band_params)
    @band.save
    if @band.save
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  # DELETE /bands/1
  # DELETE /bands/1.json
  def destroy
    @band.destroy
    respond_to do |format|
      format.html { redirect_to bands_url, notice: 'Band was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band
      @band = Band.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_params
      params.require(:band).permit(:name, :style, :description, :rating, :url)
    end
end
