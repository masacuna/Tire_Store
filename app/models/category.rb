class Category < ActiveRecord::Base
  has_many :products

  validates :name, presence: true

  def self.keyword_search(keywords)
    keywords = "%" + keywords + "%"
    result = Category.where("name LIKE ? OR description LIKE ?", keywords, keywords)
    
  end

end
