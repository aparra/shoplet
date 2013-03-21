class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.integer :product_type_id
      t.string :name
      
      t.timestamps
    end
    
    #join table for products and products categories
    create_table :product_categories_products do |t|
      t.integer :product_id
      t.integer :product_category_id
    end
  end
end
