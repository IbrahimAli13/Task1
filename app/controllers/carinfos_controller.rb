class CarinfosController < ApplicationController
  before_action :set_carinfo, only: %i[ show edit update destroy ]

  # GET /carinfos or /carinfos.json
  def index
    @carinfos = Carinfo.all
  end

  # GET /carinfos/1 or /carinfos/1.json
  def show
  end

  # GET /carinfos/new
  def new
    @carinfo = Carinfo.new
  end

  # GET /carinfos/1/edit
  def edit
  end

  # POST /carinfos or /carinfos.json
  def create
    @carinfo = Carinfo.new(carinfo_params)

    respond_to do |format|
      if @carinfo.save
        format.html { redirect_to carinfo_url(@carinfo), notice: "Carinfo was successfully created." }
        format.json { render :show, status: :created, location: @carinfo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carinfos/1 or /carinfos/1.json
  def update
    respond_to do |format|
      if @carinfo.update(carinfo_params)
        format.html { redirect_to carinfo_url(@carinfo), notice: "Carinfo was successfully updated." }
        format.json { render :show, status: :ok, location: @carinfo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carinfos/1 or /carinfos/1.json
  def destroy
    @carinfo.destroy

    respond_to do |format|
      format.html { redirect_to carinfos_url, notice: "Carinfo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carinfo
      @carinfo = Carinfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carinfo_params
      params.require(:carinfo).permit(:car_id, :plate, :owner)
    end
end
