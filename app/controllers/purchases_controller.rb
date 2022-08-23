class PurchasesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    redirect_to new_user_session_path, notice: 'You are not logged in.' unless current_user
  end

  def create
    @product = Product.find(params[:product_id])
    @purchase = Purchase.create(product_id: @product.id, user_id: current_user.id)
    redirect_to product_path(@product)
  end
end
