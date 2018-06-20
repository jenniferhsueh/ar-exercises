require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Exercise 6: One-to-many association
# We haven't used the Employee class (and employees table) at all yet. If you look at this table's 
# column structure, you'll find that it has a `store_id` (integer) column. This is a column that 
# identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create 
# stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making 
#   multiple calls to create (like you have before.) No need to assign the employees to variables 
#   though. Create them through the `@store#` instance variables that you defined in previous exercises. 
#   Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.

# burnaby = Store.create(
#   name: "Burnaby", 
#   annual_revenue: 300000, 
#   mens_apparel: true,
#   womens_apparel: true)

@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Dimitrios", last_name: "Petropoulos", hourly_rate: 100)
@store2.employees.create(first_name: "Jennifer", last_name: "Hsueh", hourly_rate: 90)
@store4.employees.create(first_name: "Sasha", last_name: "Rhodes", hourly_rate: 70)
@store4.employees.create(first_name: "Han", last_name: "Tong", hourly_rate: 40)
@store5.employees.create(first_name: "Stevia", last_name: "Hatzi", hourly_rate: 50)
@store6.employees.create(first_name: "Jennifer", last_name: "Hass", hourly_rate: 100)
@store6.employees.create(first_name: "Anna", last_name: "Bach", hourly_rate: 80)

# p Employee.all

Employee.all.each do |employees|
  puts "#{employees.first_name}"
end