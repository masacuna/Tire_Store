class CategoriesController < ApplicationController #< InheritedResources::Base
  def index
    @categories = Category.all#order(:name)
  end

  # def search #displays a search form
    
  # end

  # def search_results #displays search results
    
  # end

end
