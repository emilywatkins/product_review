class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show # products/:id
    @product = Product.find(params[:id])
  end
end
