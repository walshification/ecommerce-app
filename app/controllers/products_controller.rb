class ProductsController < ApplicationController
  before_action :authenticate_admin!, :only => [:edit, :create, :new, :update, :destroy]

  def index
    @products = Product.all
    @products = Product.order(:price) if params[:order] == "price"
    @products = Product.where('price <= ?', 2.0) if params[:feature] == "discount_items"
    @products = Product.joins(:categories).where("categories.name = ?", params[:category]) if params[:category]

    @categories = Category.all
    @carted_products = CartedProduct.all
  end

  def show
    @carted_product = CartedProduct.new
    @carted_products = CartedProduct.all
    
    if params[:id] == "random"
      @product = Product.all
      @product = products.sample
    else
      @product = Product.find_by(:id => params[:id])
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      options = params[:product][:options].split(",")
      options.each do |options|
        product.options.create(:name => option)
      end
      flash[:success] = "Product successfully added!"
      redirect_to product_path(@product.id)
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find_by(:id => params[:id])
  end

  def update
    @product = Product.find_by(:id => params[:id])
    @product.update(params[:product])
    flash[:success] = "Recipe successfully updated!"
    redirect_to product_path(product.id)
  end

  def destroy
    @product = Product.find_by(:id => params[:id])
    @product.destroy
    flash[:success] = "Product successfully deleted!"
    redirect_to product_path
  end
end
