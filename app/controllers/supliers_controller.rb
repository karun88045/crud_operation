class SupliersController < ApplicationController
  before_action :set_suplier, only: %i[ show edit update destroy ]

  # GET /supliers or /supliers.json
  def index
    @supliers = Suplier.all
  end

  # GET /supliers/1 or /supliers/1.json
  def show
  end

  # GET /supliers/new
  def new
    @suplier = Suplier.new
  end

  # GET /supliers/1/edit
  def edit
  end

  # POST /supliers or /supliers.json
  def create
    @suplier = Suplier.new(suplier_params)

    respond_to do |format|
      if @suplier.save
        format.html { redirect_to suplier_url(@suplier), notice: "Suplier was successfully created." }
        format.json { render :show, status: :created, location: @suplier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supliers/1 or /supliers/1.json
  def update
    respond_to do |format|
      if @suplier.update(suplier_params)
        format.html { redirect_to suplier_url(@suplier), notice: "Suplier was successfully updated." }
        format.json { render :show, status: :ok, location: @suplier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supliers/1 or /supliers/1.json
  def destroy
    @suplier.destroy

    respond_to do |format|
      format.html { redirect_to supliers_url, notice: "Suplier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suplier
      @suplier = Suplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suplier_params
      params.require(:suplier).permit(:name)
    end
end
