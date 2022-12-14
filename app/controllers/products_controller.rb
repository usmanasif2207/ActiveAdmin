class ProductsController < ApplicationController
  before_action :find_product , only: [:show ,:edit ,:update ,:destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end  

  def create
    @product = Product.new(product_params)
    @product.userId=  current_user.id
    
    if @product.save
      redirect_to @product
    else 
      render 'new'
     end  
  end

  def show
    
  end  

  def edit
    
  end
   
  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end    
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private
  def find_product
    @product = Product.find(params[:id])
  end  

  def product_params
    params.require(:product).permit(:name,:price)
  end  
end
