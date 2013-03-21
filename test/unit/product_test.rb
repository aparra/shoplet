require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :product_types
  
  def test_invalid_name
    p = Product.new
    assert !p.valid?
    assert p.errors[:name].any?
  end
  
  def test_invalid_type
    p = Product.new
    assert !p.valid?
    assert p.errors[:product_type].any?
  end
  
  def test_invalid_category
    p = Product.new
    p.product_type = product_types('book')
    p.product_categories << ProductCategory.create(:name => 'ABC', :product_type => product_types('music'))
    
    assert !p.valid?
    assert p.errors[:product_categories].any?
  end
  
  def test_valid_product
    p = Product.new
    p.price = 12.20
    p.name = "Hello Goodbye"
    p.product_type = product_types('book')
    
    assert p.valid?
  end
end
