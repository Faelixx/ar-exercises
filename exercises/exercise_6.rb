require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

`@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`

# Create 5 employees for store 1
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

# Create 5 employees for store 2
@store2.employees.create(first_name: "Employee2_FirstName", last_name: "Employee2_LastName", hourly_rate: 50)

# Create 5 employees for store 3

# Create 5 employees for store 4
@store4.employees.create(first_name: "Employee3_FirstName", last_name: "Employee3_LastName", hourly_rate: 55)
@store5.employees.create(first_name: "Employee4_FirstName", last_name: "Employee4_LastName", hourly_rate: 65)
@store6.employees.create(first_name: "Employee5_FirstName", last_name: "Employee5_LastName", hourly_rate: 70)

# Create 5 employees for store 5