class HomeController < ApplicationController
  def index
    # @products = Product.all
    @categories = Category.order(:name)
  end
end
