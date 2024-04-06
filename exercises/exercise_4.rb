require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

=begin
- Surrey (annual_revenue of 224000, carries women's apparel only)
- Whistler (annual_revenue of 1900000 carries men's apparel only)
- Yaletown (annual_revenue of 430000 carries men's and women's apparel)
=end
# Your code goes here ...

class Store < ActiveRecord::Base
  self.table_name = "stores"
  # has_many :stores
end

store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "The amount of store entries is: #{Store.all.count}"

# p @mens_stores

def mens_revenue
  arr = Store.where(mens_apparel: true)
  arr.each do |t|
    puts "Mens apparel shop: #{t.name}, #{t.annual_revenue}"
  end
end

mens_revenue
=begin
3. Loop through each of these stores and output their name and 
annual revenue on each line.
=end

=begin
4. Do another fetch but this time load stores that carry women's 
apparel and are generating less than $1M in annual revenue.

=end

def womens_revenue
  arr = Store.where(womens_apparel: true)
  arr.each do |t|
    puts "Womens apparel shop: #{t.name}, #{t.annual_revenue}"
  end
end

womens_revenue
