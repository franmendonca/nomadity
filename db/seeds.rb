# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Experience.destroy_all
City.destroy_all
User.destroy_all
Category.destroy_all

category1 = Category.create(
  name: "Yoga Studios",
  ref: "yoga"
)
category2 = Category.create(
  name: "Co-working Spaces",
  ref: "cowork"
)
category3 = Category.create(
  name: "Grocery Shops",
  ref: "grocery"
)
category4 = Category.create(
  name: "Gyms",
  ref: "gyms"
)
category5 = Category.create(
  name: "Cafes",
  ref: "cafes"
)
category6 = Category.create(
  name: "Co-living Spaces",
  ref: "coliving"
)
puts "Created #{Category.count} categories"

categories = Category.all
city1 = City.create!(
  name: "Lisbon",
  address: "PRAÇA DO MUNICÍPIO
  1100-365 - LISBOA
  Portugal",
  latitude: 38.7084432500784, longitude: -9.139392688623499,
  ref: "lisbon"
)
city2 = City.create!(
  name: "Porto",
  address: "R. Clube dos Fenianos 5, 4000-407 Porto",
  latitude: 41.159251036303075, longitude: -8.629319827759867,
  ref: "porto"
)
puts "Created #{City.count} cities"

cities = City.all
User.create!(
  username: "Pedro", email: "pedro@lewagon.com",
  password: "12345678",
  biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Nulla rhoncus posuere dolor in condimentum. Quisque vel elementum eros, sed tincidunt tortor.
  Pellentesque ac tortor elementum, iaculis elit quis, facilisis dui. Sed vitae mauris lacinia, luctus justo at, condimentum lacus."
)
puts "Created #{User.count} users"

20.times do
  Experience.create!(
    city: cities.sample,
    category: categories.sample,
    name: Faker::Company.name, address: Faker::Address.street_name,
    description: Faker::Lorem.sentence(word_count: 10),
    website_url: "www.google.com",
    latitude: Faker::Address.latitude, longitude: Faker::Address.longitude
  )
end

puts "Created #{Experience.count} experiences"
