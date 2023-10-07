# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database"
User.destroy_all

puts "Creating users ..."
celine = User.create!(
  email: "cmsavary@yahoo.fr",
  password: "123456"
)
celine.save!

ninon = User.create!(
  email: "ninoncaplainy@gmail.com",
  password: "123456"
)
ninon.save!

puts "Creating hotels"
pullman = Hotel.create!(
  name: "Pullman",
  address: "18 avenue de Suffren 75015 Paris"
)
pullman.save!

okko = Hotel.create!(
  name: "OKKO",
  address: "30A rue d'Alsace 75010 Paris"
)
okko.save!

puts "Creating rooms"
dream1 = Room.new(
  price_per_night: 75,
  capacity: 2
)
file_dream1 = URI.open("https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg?width=2560")
dream1.photo.attach(io: file_dream1, filename: "nes.png", content_type: "image/png")
dream1.hotel = pullman
dream1.save!

dream2 = Room.new(
  price_per_night: 85,
  capacity: 2
)
file_dream2 = URI.open("https://www.astravelsamritsar.com/images/room-slide1.jpg")
dream2.photo.attach(io: file_dream2, filename: "nes.png", content_type: "image/png")
dream2.hotel = okko
dream2.save!

dream3 = Room.new(
  price_per_night: 115,
  capacity: 3
)
file_dream3 = URI.open("https://3.imimg.com/data3/IL/XU/MY-8679324/5-star-hotel-room-booking-service-500x500.jpg")
dream3.photo.attach(io: file_dream3, filename: "nes.png", content_type: "image/png")
dream3.hotel = pullman
dream3.save!

dream4 = Room.new(
  price_per_night: 90,
  capacity: 2
)
file_dream4 = URI.open("https://www.astravelsamritsar.com/images/room-slide1.jpg")
dream4.photo.attach(io: file_dream4, filename: "nes.png", content_type: "image/png")
dream4.hotel = okko
dream4.save!

dream5 = Room.new(
  price_per_night: 85,
  capacity: 2
)
file_dream5 = URI.open("https://3.imimg.com/data3/IL/XU/MY-8679324/5-star-hotel-room-booking-service-500x500.jpg")
dream5.photo.attach(io: file_dream5, filename: "nes.png", content_type: "image/png")
dream5.hotel = pullman
dream5.save!

dream6 = Room.new(
  price_per_night: 92,
  capacity: 2
)
file_dream6 = URI.open("https://www.astravelsamritsar.com/images/room-slide1.jpg")
dream6.photo.attach(io: file_dream6, filename: "nes.png", content_type: "image/png")
dream6.hotel = okko
dream6.save!

dream7 = Room.new(
  price_per_night: 95,
  capacity: 2
)
file_dream7 = URI.open("https://3.imimg.com/data3/IL/XU/MY-8679324/5-star-hotel-room-booking-service-500x500.jpg")
dream7.photo.attach(io: file_dream7, filename: "nes.png", content_type: "image/png")
dream7.hotel = pullman
dream7.save!

dream8 = Room.new(
  price_per_night: 82,
  capacity: 2
)
file_dream8 = URI.open("https://www.astravelsamritsar.com/images/room-slide1.jpg")
dream8.photo.attach(io: file_dream8, filename: "nes.png", content_type: "image/png")
dream8.hotel = okko
dream8.save!

puts "Finished !"
