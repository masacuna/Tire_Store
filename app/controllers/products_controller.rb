
class ProductsController < ApplicationController #< InheritedResources::Base
  # before_action :set_user, only: [:show]
  def index
    @products = Product.order('name').page(params[:page]).per(5)
  end

  def show
    @product = Product.find(set_product)
  end

  def update
  end 
  # def new
  #   @product = Product.new
  # end

  # def create
  #   @product = Product.new(product_params)
  # end

  # def destroy
  #   @product.destroy
  #   respond_to do |format|
  #     format.html { redirect_to products_url }
  #     format.json { head :no_content }
  #   end
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :stock_quantity, :image)
    end
end
