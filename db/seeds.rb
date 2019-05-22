# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
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
concert_hall = Space.new(user: meder, capacity: "500+", price_per_hour: 60, amenities: "some text", name: "concert hall", location: "barcelona", description:"nice" )
concert_hall.remote_photo_url = "https://www.artscenter.org/wp-content/uploads/2018/12/PAC_Concert-Hall_Rectangle.jpg"
concert_hall.save
party_room = Space.new(user: kristine, capacity: "20 to 50", price_per_hour: 40, amenities: "some text", name: "party room", location: "barcelona",  description:"nice")
party_room.remote_photo_url = "http://gumballspartyroom.com/wp-content/uploads/photo-gallery/SEATING_SNOW_WHITE.jpg"
party_room.save
banquet_hall = Space.new(user: ricardo, capacity: "100 to 200", price_per_hour: 50, amenities: "some text", name: "banquet hall", location: "barcelona",  description:"nice")
banquet_hall.remote_photo_url = "https://www.varunajithesh.com/wp-content/sabai/File/files/248fbebb287bd3e30fb05981bec3c87b.jpg"
banquet_hall.save
garage = Space.new(user: ashley, capacity: "200 to 500", price_per_hour: 200, amenities: "some text", name: "garage", location: "barcelona",  description:"nice")
garage.remote_photo_url = "http://www.hizook.com/files/users/3/WG_Party.jpg"
garage.save
private_house = Space.new(user: ashley, capacity: "200 to 500", price_per_hour: 200, amenities: "some text", name: "garage", location: "barcelona",  description:"nice")
private_house.remote_photo_url = "https://www.narcity.com/uploads/269221_e073c6f3f9774b16287b1072070d402da2a0d03a.png_facebook.png"
private_house.save
boat = Space.new(user: ashley, capacity: "200 to 500", price_per_hour: 200, amenities: "some text", name: "garage", location: "barcelona",  description:"nice")
boat.remote_photo_url = "https://www.thewhiteisle.co.uk/wp-content/uploads/2017/02/pukka-800x533.jpeg"
boat.save

puts "Spaces created, finished..."
puts "Creating bookings"
# Booking.create(user: kristine, space: garage, total_price: 500.00 , start_date: "21/05/2019/1900", end_date: "21/05/2019/2300")


puts "Bookings created, finished..."

