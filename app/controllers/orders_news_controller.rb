class OrdersNewsController < ApplicationController
  before_action :set_orders_news, only: [:show, :edit, :update, :destroy]

  # GET /orders_news
  # GET /orders_news.json
  def index
    @orders_news = OrdersNew.all
  end

  # GET /orders_news/1
  # GET /orders_news/1.json
  def show
  end

  # GET /orders_news/new
  def new
    @orders_news = OrdersNew.new
  end

  # GET /orders_news/1/edit
  def edit
  end

  # POST /orders_news
  # POST /orders_news.json
  def create
    @orders_news = OrdersNew.new(orders_news_params)

    respond_to do |format|
      if @orders_news.save
        format.html { redirect_to @orders_news, notice: 'Orders new was successfully created.' }
        format.json { render :show, status: :created, location: @orders_news }
      else
        format.html { render :new }
        format.json { render json: @orders_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders_news/1
  # PATCH/PUT /orders_news/1.json
  def update
    respond_to do |format|
      if @orders_news.update(orders_news_params)
        format.html { redirect_to @orders_news, notice: 'Orders new was successfully updated.' }
        format.json { render :show, status: :ok, location: @orders_news }
      else
        format.html { render :edit }
        format.json { render json: @orders_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_news/1
  # DELETE /orders_news/1.json
  def destroy
    @orders_news.destroy
    respond_to do |format|
      format.html { redirect_to orders_news_url, notice: 'Orders new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orders_news
      @orders_news = OrdersNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orders_news_params
      params.require(:orders_news).permit(:num, :hz, :client, :date)
    end
end
