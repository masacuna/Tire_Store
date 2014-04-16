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
    # @found_products = Product.where("name LIKE ?", keywords)
  end# Displays search results
end
