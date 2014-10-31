class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_user!, :only => [:index, :create]
  # before_action :authenticate_user!, :except => [:index, :create]

  def create
    @carted_product = CartedProduct.create(params[:carted_product])
    current_product_id = params[:carted_product][:product_id]
    if current_user.orders.where(:status => "cart").any?
      @order = current_user.orders.find_by(:status => "cart")
    else
      @order = current_user.orders.create(user_id: current_user.id, status: "cart")
    end

    @carted_product.update(:product_id => current_product_id, :order_id => @order.id, :quantity => params[:carted_product][:quantity])

    flash[:success] = "Product added to the shopping cart!"
    redirect_to "/products"
  end

  def index
    @order = current_user.orders.create(user_id: current_user.id, status: "cart")
    @carted_products = CartedProduct.all
    @subtotal = 0.0
    @carted_products.each do |carted_product|
      @subtotal += carted_product.product.price
    end
    @tax = @subtotal * 0.1
    @total_price = @subtotal + @tax
  end

  def update
    @order = current_user.orders.find_by(:status => "cart")
    @order.update(status: "purchased")
  end
end
