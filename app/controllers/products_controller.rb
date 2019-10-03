class ProductsController < ApplicationController
  def index
  end
  
  def new 
    
  end

  def add
    current_cart << params[:product]
    redirect_to '/'
  end
  
  def current_cart
    session[:cart] ||= []
  end
  
end
