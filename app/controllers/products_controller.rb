class ProductsController < ApplicationController
  def product_params
    params.require(:product).permit(:name, :price)
  end

  def create
    @product = Products.new(product_params)
    @product.save
    redirect_to category_path(@product.category_id)
  end
end
