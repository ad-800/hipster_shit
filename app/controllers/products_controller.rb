class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :new, :create]

  def index
    @products = Product.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
