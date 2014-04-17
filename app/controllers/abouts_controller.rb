class AboutsController < InheritedResources::Base
  def index
    @abouts = About.all
  end

  def show
  end 
end
