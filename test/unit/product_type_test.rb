require 'test_helper'

class ProductTypeTest < ActiveSupport::TestCase
  def test_invalid_name
    p = ProductType.new
    assert !p.valid?
    assert p.errors[:name].any?
  end
end
