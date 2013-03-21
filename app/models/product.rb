class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :product_type, :product_categories

  has_and_belongs_to_many :product_categories
  belongs_to :product_type
end
