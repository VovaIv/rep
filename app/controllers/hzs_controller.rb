class HzsController < ApplicationController
  before_action :set_hz, only: [:show, :edit, :update, :destroy]

  # GET /hzs
  # GET /hzs.json
  def index
    @hzs = Hz.all
  end

  # GET /hzs/1
  # GET /hzs/1.json
  def show
  end

  # GET /hzs/new
  def new
    @hz = Hz.new
  end

  # GET /hzs/1/edit
  def edit
  end

  # POST /hzs
  # POST /hzs.json
  def create
    @hz = Hz.new(hz_params)

    respond_to do |format|
      if @hz.save
        format.html { redirect_to @hz, notice: 'Hz was successfully created.' }
        format.json { render :show, status: :created, location: @hz }
      else
        format.html { render :new }
        format.json { render json: @hz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hzs/1
  # PATCH/PUT /hzs/1.json
  def update
    respond_to do |format|
      if @hz.update(hz_params)
        format.html { redirect_to @hz, notice: 'Hz was successfully updated.' }
        format.json { render :show, status: :ok, location: @hz }
      else
        format.html { render :edit }
        format.json { render json: @hz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hzs/1
  # DELETE /hzs/1.json
  def destroy
    @hz.destroy
    respond_to do |format|
      format.html { redirect_to hzs_url, notice: 'Hz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hz
      @hz = Hz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hz_params
      params.require(:hz).permit(:name, :num, :hz, :client, :date)
    end
end
