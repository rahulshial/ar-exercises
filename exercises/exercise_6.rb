require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "\nExercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.employees.create(
  first_name: "Rahul",
  last_name: "Shial",
  hourly_rate: 75)

@store1.employees.create(
  first_name: "Varsha",
  last_name: "Shial",
  hourly_rate: 75)

@store1.employees.create(
  first_name: "Mitra",
  last_name: "Shial",
  hourly_rate: 75)

@store2.employees.create(
  first_name: "Urmi",
  last_name: "Shial",
  hourly_rate: 75)

@store2.employees.create(
  first_name: "Jamai Babu",
  last_name: "Shial",
  hourly_rate: 75)

@store2.employees.create(
  first_name: "Naukar",
  last_name: "Shial",
  hourly_rate: 75)
    
    
