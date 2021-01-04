require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter a new Store Name: "
@store_name = gets.chomp.to_s

print "Enter #{@store_name}\'s Annual Revenue: "
@store_revenue = gets.chomp.to_i


@new_store = Store.create(
  name: @store_name,
  annual_revenue: @store_revenue).valid?

puts @new_store.errors.full_messages