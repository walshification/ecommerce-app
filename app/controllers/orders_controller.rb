class OrdersController < ApplicationController
  def update
    @order = Order.find(params[:id])
    @order.update(status: "purchased")
  end
end
