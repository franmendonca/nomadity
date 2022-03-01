# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Experience.destroy_all
City.destroy_all
User.destroy_all
Category.destroy_all

category1 = Category.create(
  name: "Yoga Studios"
)
puts "Created #{Category.count} categories"

city1 = City.create!(
  name: "Lisbon",
  address: "PRAÇA DO MUNICÍPIO
  1100-365 - LISBOA
  Portugal",
  latitude: 38.7084432500784, longitude: -9.139392688623499
)
puts "Created #{City.count} cities"

User.create!(
  username: "Pedro", email: "pedro@lewagon.com",
  password: "12345678",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Nulla rhoncus posuere dolor in condimentum. Quisque vel elementum eros, sed tincidunt tortor.
  Pellentesque ac tortor elementum, iaculis elit quis, facilisis dui. Sed vitae mauris lacinia, luctus justo at, condimentum lacus."
)
puts "Created #{User.count} users"

Experience.create!(
  city_id: city1.id,
  category_id: category1.id,
  name: "Shambhala", address: "Rua do Conde Redondo, 88",
  description: "One of the best Yoga studios in town right now",
  website_url: "www.google.com",
  latitude: 38.736946, longitude: -9.142685
)
puts "Created #{Experience.count} experiences"
