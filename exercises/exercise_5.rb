require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Total Sum
@stores = Store.all
@total_revenue = @stores.sum(:annual_revenue)
puts "Total Revenue: #{@total_revenue}"

# Average Annual Revenue
@average_revenue = @stores.average(:annual_revenue)
puts "Average Revenue: #{@average_revenue}"

# nStores generating > $1mil annual revenue
@stores_high = Store.where("annual_revenue > 1000000").count
puts "High Revenue Stores: #{@stores_high}"