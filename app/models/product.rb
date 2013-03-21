class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price

  belongs_to :product_type
end
