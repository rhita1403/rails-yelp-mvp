# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
belgium = { name: "Belgium", address: "7 Boundary St, London E2 7JE", phone_number: 532, category: "belgian" }
italy = { name: "Italy", address: "7 Boundary St, London E2 7JE", phone_number: 533, category: "italian" }
china = { name: "China", address: "7 Boundary St, London E2 7JE", phone_number: 534, category: "chinese" }
japan = { name: "Japan", address: "7 Boundary St, London E2 7JE", phone_number: 535, category: "japanese" }
france = { name: "France", address: "7 Boundary St, London E2 7JE", phone_number: 536, category: "french" }


[belgium, italy, china, japan, france].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
