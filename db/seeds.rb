# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Space.destroy_all
User.destroy_all


meder = User.create!(
  email: "meder@meder.com",
  first_name: "Meder",
  last_name: "Ashiraliev",
  password: "password"
  )

kristine = User.create!(
  email: "kristine@kristine.com",
  first_name: "Kristine",
  last_name: "Mcbride",
  password: "password"
  )

ricardo = User.create!(
  email: "ricardo@ricardo.com",
  first_name: "Ricardo",
  last_name: "Espinoza",
  password: "password"
  )

ashley = User.create!(
  email: "ashley@ashley.com",
  first_name: "Ashley",
  last_name: "Garcia",
  password: "password"
  )
puts "Creating spaces..."
Space.create(user: meder, capacity: 5, price: 60, amenities: "some text", name: "Mango", space_type: "garage", location: "barcelona")
Space.create(user: kristine, capacity: 6, price: 40, amenities: "some text", name: "Banana", space_type: "garage", location: "barcelona")
Space.create(user: ricardo, capacity: 8, price: 50, amenities: "some text", name: "Chicken", space_type: "garage", location: "barcelona")
Space.create(user: ashley, capacity: 4, price: 100, amenities: "some text", name: "Orange", space_type: "garage", location: "barcelona")

puts "Spaces created, finished..."
