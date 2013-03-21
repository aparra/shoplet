class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def data
    ProductType.new('Book').save
    ProductType.new('Music').save
    ProductType.new('Movie').save
  end
end
