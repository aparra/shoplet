class ProductCategory < ActiveRecord::Base
  attr_accessible :name, :product_type
  
  belongs_to :product_type
end
