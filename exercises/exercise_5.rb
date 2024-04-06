require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts Store.sum(:annual_revenue)
puts Store.average(:annual_revenue)

def over_1m
  arr = Store.where('annual_revenue > ?', 1000000)
  arr.each do |t|
    puts "Shops over 1m: #{t.name}, #{t.annual_revenue}"
  end
end

over_1m

# puts Store.where(:annual_revenue > 1000000)