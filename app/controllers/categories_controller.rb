class CategoriesController < ApplicationController #< InheritedResources::Base
  def index
    @categories = Category.all
  end

  # def search #displays a search form
    
  # end

  # def search_results #displays search results
    
  # end

end
