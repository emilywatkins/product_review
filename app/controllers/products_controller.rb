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
end
