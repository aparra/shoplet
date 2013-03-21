class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :product_type

  belongs_to :product_type
end
