class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, :price , :stock_quantity , presence: true
  validates :price                          , numericality: true
  validates :stock_quantity                 , numericality: { only_integer: true }
end
