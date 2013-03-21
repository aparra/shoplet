class ProductCategory < ActiveRecord::Base
  attr_accessible :name, :product_type, :products
  
  has_and_belongs_to_many :products
  belongs_to :product_type
end
