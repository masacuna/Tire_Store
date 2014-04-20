class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :category
  has_many :line_items
  has_many :orders, through: :line_items

  validates :name, :price , :stock_quantity , presence: true
  validates :price                          , numericality: true
  validates :stock_quantity                 , numericality: { only_integer: true }

  def self.keyword_search(keywords)
    keywords = "%" + keywords + "%"
    Product.where("name LIKE ?", keywords)
  end

  

end
