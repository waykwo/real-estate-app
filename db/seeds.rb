# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "faker"

# p Faker::Address.full_address

20.times do
  home = Home.new(
    year_built: rand(1900..2024),
    square_feet: rand(600..4000),
    bedrooms: rand(1..8),
    bathrooms: (rand(1..5) * 2).round / 2.0,
    floors: (rand(1..5) * 2).round / 2.0,
    availability: "Soon!",
    address: Faker::Address.full_address,
    price: rand(200000..99999999)
  )

  home.description = "A very nice #{home.square_feet} sq. ft house built in #{home.year_built} with #{home.bedrooms} bedrooms."
  home.save
end