class FactSalesController < ApplicationController
  before_action :set_fact_sale, only: [:show, :edit, :update, :destroy]

  # GET /fact_sales
  # GET /fact_sales.json
  def index
    @fact_sales = FactSale.all
  end

  # GET /fact_sales/1
  # GET /fact_sales/1.json
  def show
  end

  # GET /fact_sales/new
  def new
    @fact_sale = FactSale.new
  end

  # GET /fact_sales/1/edit
  def edit
  end

  # POST /fact_sales
  # POST /fact_sales.json
  def create
    @fact_sale = FactSale.new(fact_sale_params)

    respond_to do |format|
      if @fact_sale.save
        format.html { redirect_to @fact_sale, notice: 'Fact sale was successfully created.' }
        format.json { render :show, status: :created, location: @fact_sale }
      else
        format.html { render :new }
        format.json { render json: @fact_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fact_sales/1
  # PATCH/PUT /fact_sales/1.json
  def update
    respond_to do |format|
      if @fact_sale.update(fact_sale_params)
        format.html { redirect_to @fact_sale, notice: 'Fact sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @fact_sale }
      else
        format.html { render :edit }
        format.json { render json: @fact_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fact_sales/1
  # DELETE /fact_sales/1.json
  def destroy
    @fact_sale.destroy
    respond_to do |format|
      format.html { redirect_to fact_sales_url, notice: 'Fact sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fact_sale
      @fact_sale = FactSale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fact_sale_params
      params.require(:fact_sale).permit(:started_at, :charged_amount, :estimated_amount, :location)
    end
end
