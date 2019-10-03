class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new 
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    redirect_to products_path
  end
  

  
  private
  
  def product_params
    params.require(:product).permit(:name)
  end
  
end
