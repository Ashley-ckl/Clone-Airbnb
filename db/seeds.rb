# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Space.destroy_all
User.destroy_all
Booking.destroy_all


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
concert_hall = Space.create(user: meder, capacity: 300, price: 60, amenities: "some text", name: "concert hall", space_type: "garage", location: "barcelona")
party_room = Space.create(user: kristine, capacity: 50, price: 40, amenities: "some text", name: "party room", space_type: "garage", location: "barcelona")
banquet_hall = Space.create(user: ricardo, capacity: 200, price: 50, amenities: "some text", name: "banquet hall", space_type: "garage", location: "barcelona")
garage = Space.create(user: ashley, capacity: 20, price: 100, amenities: "some text", name: "garage", space_type: "garage", location: "barcelona")

puts "Spaces created, finished..."
puts "Creating bookings"
Booking.create(user: kristine, space: garage, total_price: 500.00 , start_date: "21/05/2019/1900", end_date: "21/05/2019/2300")


puts "Bookings created, finished..."

