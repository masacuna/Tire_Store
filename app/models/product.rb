class Product < ActiveRecord::Base
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  belongs_to :category

  validates :name, :price , :stock_quantity , presence: true
  validates :price                          , numericality: true
  validates :stock_quantity                 , numericality: { only_integer: true }
end
