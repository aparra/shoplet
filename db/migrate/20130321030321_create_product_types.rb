class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def data
    ProductTypes.new('Book').save
    ProductTypes.new('Music').save
    ProductTypes.new('Movie').save
  end
end
