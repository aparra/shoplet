class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :product_type_id
      t.decimal :price
      t.timestamps
    end
  end
end
