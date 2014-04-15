class CategoriesController < InheritedResources::Base
  def index
    @categories = Category.order(:name)
  end

  # def search #displays a search form
    
  # end

  # def search_results #displays search results
    
  # end

end
