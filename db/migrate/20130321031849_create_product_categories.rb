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
  
  def data
    book = ProductType.find_by_name 'Book'
    %w(Computers Mysteries Science\ Fiction Crime).each do |v|
      ProductCategory.new(:product_type => book, :name => v).save
    end

    music = ProductType.find_by_name 'Music'
    %w(Jazz World\ Musice Eletronic Rock Indie Country).each do |v|
      ProductCategory.new(:product_type => music, :name => v).save
    end

    movie = ProductType.find_by_name 'Movie'
    %w(Action Science\ Fiction Drama Comedy Thriller).each do |v|
      ProductCategory.new(:product_type => movie, :name => v).save
    end
  end  
end
