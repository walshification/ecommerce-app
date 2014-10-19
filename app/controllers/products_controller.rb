class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:price)
  end

  def show
    @product = Product.find_by(:id => params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])
  end

  def edit
    @product = Product.find_by(:id => params[:id])
  end

  def update
    @product = Product.find_by(:id => params[:id])
    @product.update(params[:product])
  end

  def destroy
    @product = Product.find_by(:id => params[:id])
    @product.destroy
  end

  def discount_items
    @discount_products = Product.where("price < ?", 2)
  end
end
