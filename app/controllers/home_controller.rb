class HomeController < ApplicationController
  def index
    # @products = Product.all
    @categories = Category.order(:name)
  end

  def search

  end#Displays a search form

  def search_results
    @found_products = Product.keyword_search(params[:search_keywords])
    # keywords = "%" + params[:search_keywords] + "%"

    if @found_products.count == 0 
      flash.now[:alert] = "Search not found"
    end
    # @found_products = Product.where("name LIKE ?", keywords)
  end# Displays search results

  def cart #runs on 'get' cart
   
    if session[:cart].nil? && params[:product_id].present?
      session[:cart] = {params[:product_id].to_i => params[:quantity].to_i}
      flash.now[:alert] = session[:cart]
      products_in_cart
    else
      session[:cart][params[:product_id].to_i] = params[:quantity].to_i
      flash.now[:alert] = session[:cart]
      products_in_cart
    end
    # session[:current_order] = {:product.id => params[]}
  end

  def clean_out_cart
    session.delete(:cart)
    redirect_to root_path
  end

  def products_in_cart
    @products = Product.where(id: session[:cart].keys)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   

     # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :stock_quantity, :image)
    end

end

