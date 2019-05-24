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
  password: "password",
  avatar: open("https://res.cloudinary.com/mike-asher/image/upload/v1558622915/ukezkpbjfxh6ensucpk0.jpg")
  )


kristine = User.create!(
  email: "kristine@kristine.com",
  first_name: "Kristine",
  last_name: "Mcbride",
  password: "password",
  avatar: open("https://res.cloudinary.com/mike-asher/image/upload/v1558625747/kristine_hu9g6f.png")
  )

ricardo = User.create!(
  email: "ricardo@ricardo.com",
  first_name: "Ricardo",
  last_name: "Espinoza",
  password: "password",
  avatar: open("https://res.cloudinary.com/mike-asher/image/upload/v1558625527/ricardo_vbuhcm.jpg")
  )

ashley = User.create!(
  email: "ashley@ashley.com",
  first_name: "Ashley",
  last_name: "Garcia",
  password: "password",
  avatar: open("https://res.cloudinary.com/mike-asher/image/upload/v1558625095/ashley_bm1krp.jpg")
  )


puts "Creating spaces..."
concert_hall = Space.new(user_id: meder.id, capacity: "500+", price_per_hour: 100, amenities: "Buffet, Waiting Staff", name: "Concert Hall", location: "Carrer del Comerc, Barcelona", description:"The building is rectangular shaped. The house is half surrounded by a covered patio.
The second floor is the same size as the first, which has been built exactly on top of the floor below it. This floor follows the same style as the floor below." )
concert_hall.remote_photo_url = "https://www.artscenter.org/wp-content/uploads/2018/12/PAC_Concert-Hall_Rectangle.jpg"
concert_hall.save
party_room = Space.new( user_id: kristine.id, capacity: "20 to 50", price_per_hour: 200, amenities: "Dj, Waiting Staff", name: "Party room", location: "Passeig de Gracia, Barcelona",  description:"From the outside this house looks intimate and cozy. It has been built with cypress wood and has burgandy brick decorations. Small, half rounded windows allow enough light to enter the home and have been added to the house in a mostly symmetric way.
")
party_room.remote_photo_url = "http://gumballspartyroom.com/wp-content/uploads/photo-gallery/SEATING_SNOW_WHITE.jpg"
party_room.save
banquet_hall = Space.new(user_id: ricardo.id, capacity: "100 to 200", price_per_hour: 150, amenities: "Kitchen, Band, Waiting Staff", name: "Banquet Hall", location: "Carrer den Grassot, Barcelona",  description:"From the outside this house looks intimate and cozy. It has been built with cypress wood and has burgandy brick decorations. Small, half rounded windows allow enough light to enter the home and have been added to the house in a mostly symmetric way.")
banquet_hall.remote_photo_url = "https://www.varunajithesh.com/wp-content/sabai/File/files/248fbebb287bd3e30fb05981bec3c87b.jpg"
banquet_hall.save
garage = Space.new(user_id: ashley.id, capacity: "200 to 500", price_per_hour: 200, amenities: "Toilet, Access to kitchen", name: "Garage", location: "Carrer de Balboa, Barcelona",  description:"The garage is low and rounded and is covered with brown wood shingles. Two small chimneys sit at either side of the house. Several large windows let in plenty of light to the rooms below the roof.")
garage.remote_photo_url = "http://www.hizook.com/files/users/3/WG_Party.jpg"
garage.save
private_house = Space.new(user_id: ashley.id, capacity: "200 to 500", price_per_hour: 100, amenities: "Everything you need", name: "Private House", location: "Rambla de Prim, Barcelona",  description:"From the outside this house looks intimate and cozy. It has been built with cypress wood and has burgandy brick decorations. Small, half rounded windows allow enough light to enter the home and have been added to the house in a mostly symmetric way.")
private_house.remote_photo_url = "https://www.narcity.com/uploads/269221_e073c6f3f9774b16287b1072070d402da2a0d03a.png_facebook.png"
private_house.save
boat = Space.new(user_id: ricardo.id, capacity: "100 to 300", price_per_hour: 400, amenities: "sundeck, open bar, umbrellas, chairs, towels", name: "Private Boat", location: "Ronda del port, Barcelona",  description:"Amazing boat for your private parties, enjoy the best views")
boat.remote_photo_url = "https://www.thewhiteisle.co.uk/wp-content/uploads/2017/02/pukka-800x533.jpeg"
boat.save
loft = Space.new(user_id: kristine.id, capacity: "up to 20", price_per_hour: 50, amenities: "couches, pool table, bar, tables & chairs", name: "City Center Loft", location: "La Rambla, Barcelona",  description:"High ceilings, open spaces, exposed building materials and big windows.")
loft.remote_photo_url = "https://static1.squarespace.com/static/53fe35a8e4b0fc0f8a5dd23b/5c27bea803ce64cdbb271c92/5c27bf07b8a0456c72b89c49/1546108788283/HudsonLoft_025.jpg"
loft.save
roof = Space.new(user_id: meder.id, capacity: "200 to 500", price_per_hour: 300, amenities: "lounge chairs, pool, open bar, security guard", name: "Rooftop Terrace", location: "Carrer de Blai, Barcelona",  description:"There is no better place to be at sunset than sipping a cocktail on one of Barcelona’s ultra-chic roof bars.")
roof.remote_photo_url = "https://rooftopxp.com/wp-content/uploads/2017/12/Hyatt-House-Jersey-City-RoofTop-at-Exchange-Place-Patio.jpg"
roof.save


puts "Spaces created, finished..."
puts "Creating bookings"
Booking.create(user: meder, host_id: ashley.id,  space: party_room, total_price: 1000.00 , start_date: "2019-05-25", start_time: "19:00:00", hours: 5)
Booking.create(user: meder, host_id: kristine.id, space: garage, total_price: 800.00 , start_date: "2019-05-29", start_time: "21:00:00", hours: 4)
Booking.create(user: ricardo, host_id: kristine.id, space: private_house, total_price: 600.00 , start_date: "2019-05-24", start_time: "17:00:00", hours: 6)
Booking.create(user: ricardo, host_id: ashley.id,  space: party_room, total_price: 1400.00 , start_date: "2019-06-21", start_time: "19:00:00", hours: 7)
Booking.create(user: meder, host_id: ricardo.id, space: boat, total_price: 1200.00 , start_date: "2019-06-11", start_time: "20:00:00", hours: 4)
Booking.create(user: kristine, host_id: ashley.id, space: roof, total_price: 1800.00 , start_date: "2019-06-01", start_time: "18:00:00", hours: 6)

puts "Bookings created, finished..."

