class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = Product.order(:price) if params[:order] == "price"
    # @products = Product.where('price <= ?', 2.0) if params[:feature] = "discount_items"
    @products = Product.joins(:categories).where("categories.name = ?", params[:category]) if params[:category]

    @categories = Category.all
  end

  def show
    @order = Order.new
    
    if params[:id] == "random"
      @product = Product.all
      @product = products.sample
    else
      @product = Product.find_by(:id => params[:id])
    end

    @carted_products = Product.joins(:orders).where("orders.")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])
    options = params[:product][:options].split(",")
    options.each do |options|
      product.options.create(:name => option)
    end
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
end
