# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Restaurants being destroyed"
Restaurant.destroy_all

100.times do
  name = Faker::Hipster.word
  address = Faker::Address.street_address
  rating = rand(1..5)

  Restaurant.create(name: name, address: address, rating: rating)
  puts "Restaurant #{name} created"
end

puts "All restaurants created"
