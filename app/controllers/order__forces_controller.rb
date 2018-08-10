class OrderForcesController < ApplicationController
  before_action :set_order__force, only: [:show, :edit, :update, :destroy]

  # GET /order__forces
  # GET /order__forces.json
  def index
    @order__forces = OrderForce.all
  end

  # GET /order__forces/1
  # GET /order__forces/1.json
  def show
  end

  # GET /order__forces/new
  def new
    @order__force = OrderForce.new
  end

  # GET /order__forces/1/edit
  def edit
  end

  # POST /order__forces
  # POST /order__forces.json
  def create
    @order__force = OrderForce.new(order__force_params)

    respond_to do |format|
      if @order__force.save
        format.html { redirect_to @order__force, notice: 'Order  force was successfully created.' }
        format.json { render :show, status: :created, location: @order__force }
      else
        format.html { render :new }
        format.json { render json: @order__force.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order__forces/1
  # PATCH/PUT /order__forces/1.json
  def update
    respond_to do |format|
      if @order__force.update(order__force_params)
        format.html { redirect_to @order__force, notice: 'Order  force was successfully updated.' }
        format.json { render :show, status: :ok, location: @order__force }
      else
        format.html { render :edit }
        format.json { render json: @order__force.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order__forces/1
  # DELETE /order__forces/1.json
  def destroy
    @order__force.destroy
    respond_to do |format|
      format.html { redirect_to order__forces_url, notice: 'Order  force was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order__force
      @order__force = OrderForce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order__force_params
      params.require(:order__force).permit(:name, :num, :hz, :client, :date)
    end
end
