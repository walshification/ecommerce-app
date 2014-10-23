class OrdersController < ApplicationController
  def create
    @order = Order.create(params[:order])
    @order.user_id = current_user
    
    flash[:success] = "Product successfully bought!"
    redirect_to "/products/#{@order.product_id}"
  end
end
