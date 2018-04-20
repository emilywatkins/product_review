class ProductsController < ApplicationController
  def index # /products
    @products = Product.all
  end

  def show # /products/:id
    @product = Product.find(params[:id])
  end

  def new # /products/new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = 'updated product'
      redirect_to product_path(@product)
    else
      flash[:alert] = 'try again, error occured'
      render :edit
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :country_of_origin)
  end
end
