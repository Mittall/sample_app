# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or find_or_create_byd alongside the db with db:setup).
#
# Examples:
#
#   cities = City.find_or_create_by([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.find_or_create_by(name: 'Emanuel', city: cities.first)


puts "Categories loaded"
Category.find_or_create_by( :name => "Electronics")
Category.find_or_create_by( :name => "Cloths")
Category.find_or_create_by( :name => "Asseseries")
Category.find_or_create_by( :name => "Furniture")

puts "Products loaded"
Product.find_or_create_by(:category_id => 1, :name => "TV", :price => "20000")
Product.find_or_create_by(:category_id => 1, :name => "Mobile", :price => "10000")
Product.find_or_create_by(:category_id => 1, :name => "Pendrive", :price => "5000")
Product.find_or_create_by(:category_id => 2, :name => "Men tshrit", :price => "6000")
Product.find_or_create_by(:category_id => 2, :name => "Women tshirt", :price => "900")
Product.find_or_create_by(:category_id => 3, :name => "Gold Ring", :price => "5000")
Product.find_or_create_by(:category_id => 3, :name => "Silver Ring", :price => "1000")
Product.find_or_create_by(:category_id => 3, :name => "Dimand Ring", :price => "6000")
Product.find_or_create_by(:category_id => 4, :name => "Window Frame", :price => "1000")
Product.find_or_create_by(:category_id => 4, :name => "Dinning Table", :price => "20000")
Product.find_or_create_by(:category_id => 4, :name => "Study Table", :price => "2000")

