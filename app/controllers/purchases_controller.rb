class PurchasesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    if current_user
      @purchase = Purchase.new
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end

  def create
    @product = Product.find(params[:product_id])
    @purchase = Purchase.create(product_id: @product.id, user_id: current_user.id)
    redirect_to product_path(@product)
  end
end
