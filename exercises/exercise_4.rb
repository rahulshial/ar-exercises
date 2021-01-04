require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 460000, mens_apparel: true, womens_apparel: true)
puts "\nTotal Stores: #{Store.count}\n"

@mens_store = Store.where(mens_apparel: true)

puts "Men's store statistics"
@mens_store.each do |store|
  puts "\n#{store.name}\'s annual revenue is #{store.annual_revenue}"
end

puts "Women's store statistics"
@womens_store = Store.where(womens_apparel: true)
@womens_store.each do |store|
  puts "\n#{store.name}\'s annual revenue is #{store.annual_revenue}"
end
