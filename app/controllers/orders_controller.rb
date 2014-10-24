class OrdersController < ApplicationController
  def create
    @order = current_user.orders.create(params[:order])
    current_product_id = params[:order][:product_id]
    @current_product = Product.find(current_product_id.to_i)

    @subtotal = @order.quantity * @current_product.price
    @current_order_tax = "#{@order.quantity * @current_product.tax}0"
    @order.total = @order.quantity * @current_product.price_and_tax
    @order.confirmation_number = @order.id

    @order.save
    # @order.update(:total => @order.quantity * current_product.price)
  end
end
