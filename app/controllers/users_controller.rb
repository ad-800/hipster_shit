class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @product = Product.find(params[:product_id])
  end
end
