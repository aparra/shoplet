# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book = ProductType.create(:name => 'Book')
music = ProductType.create(:name => 'Music')
movie = ProductType.create(:name => 'Movie')

%w(Computers Mysteries Science\ Fiction Crime).each do |v|
  ProductCategory.new(:product_type => book, :name => v).save
end

%w(Jazz World\ Musice Eletronic Rock Indie Country).each do |v|
  ProductCategory.new(:product_type => music, :name => v).save
end

%w(Action Science\ Fiction Drama Comedy Thriller).each do |v|
  ProductCategory.new(:product_type => movie, :name => v).save
end
