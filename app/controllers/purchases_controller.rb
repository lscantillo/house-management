class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[ show edit update destroy ]

  # GET /purchases or /purchases.json
  def index
    @purchases = Purchase.all
  end

  # GET /purchases/1 or /purchases/1.json
  def show
  end

  # GET /purchases/new
  def new
    @purchase = Purchase.new
  end

  # GET /purchases/1/edit
  def edit
  end

  # POST /purchases or /purchases.json
  def create
    @purchase = Purchase.new(purchase_params)
    debugger
    respond_to do |format|
      if @purchase.save
        format.html { redirect_to products_purchase_path(@purchase), notice: "Purchase was successfully created." }
        format.json { render :show, status: :created, location: @purchase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchases/1 or /purchases/1.json
  def update
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to purchase_url(@purchase), notice: "Purchase was successfully updated." }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1 or /purchases/1.json
  def destroy
    @purchase.destroy!

    respond_to do |format|
      format.html { redirect_to purchases_url, notice: "Purchase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def products
    @purchase = Purchase.find(params[:id])
    @pantry = @purchase.pantry
    @products = @purchase.products
    @purchases_product = @purchase.purchases_products
    @total = @purchases_product.sum(:price)
    @quantity = @purchases_product.sum(:quantity)
  end

  def add_product
    @purchase = Purchase.find(params[:purchase_id])
    @purchases_product = @purchase.purchases_products.build(purchases_product_params)
    if @purchases_product.save
      redirect_to products_purchase_path(@purchase), notice: "Product was successfully added."
    else
      render :products
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_params
      params.require(:purchase).permit(:name, :user_id, :status, :pantry_id)
    end

    def purchases_product_params
      params.require(:purchases_product).permit(:description, :expiration_at, :price, :purchased_at, :quantity, :product_id, :purchase_id)
    end
end
