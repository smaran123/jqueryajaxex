class ProductsController < ApplicationController
 before_action :set_product, :except => [:index,:new, :create]
 def new
  @product = Product.new
end

def create
  @products = Product.all
  @product = Product.create(product_params)
end

def edit

end

def update
@products = Product.all
  @product.update(product_params)
end

def show

end

def index
  @products = Product.all
end

def destroy
  @products = Product.all

@product.destroy
respond_to do |format|
  format.js
end
end





private

def product_params
  params.require(:product).permit!
end

def set_product
  @product = Product.find(params[:id])
end


end
