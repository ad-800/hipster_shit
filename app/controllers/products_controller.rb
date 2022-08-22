class ProductsController < ApplicationController
  before_action :set_product, only: :show

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'The product was successfully added'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
