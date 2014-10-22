class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = Product.order(:price) if params[:order] == "price"
  end

  def show
    if params[:id] == "random"
      @product = Product.all
      @product = product.sample
    else
      @product = Product.find_by(:id => params[:id])
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])
    flash[:success] = "Product successfully added!"
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find_by(:id => params[:id])
  end

  def update
    @product = Product.find_by(:id => params[:id])
    @product.update(params[:product])
    flash[:success] = "Recipe successfully updated!"
    redirect_to "/products/#{params[:id]}"
  end

  def destroy
    @product = Product.find_by(:id => params[:id])
    @product.destroy
    flash[:success] = "Product successfully deleted!"
    redirect_to '/products'
  end

  def discount_items
    @discount_products = Product.where("price < ?", 2)
  end
end
