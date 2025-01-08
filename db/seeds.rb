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
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "BareGrills", address: "7 Taunton Road, Taunton TA1 7JE", category: "belgian")
puts "Created BareGrills"
Restaurant.create!(name: "Shanghai Delights", address: "24 Bristol High St, Bristol B1 8QR", category: "chinese")
puts "Created Shanghai Delights"
Restaurant.create!(name: "Le Chien", address: "114 Jammy Lane, Wolverhampton W2 9GI", category: "french")
puts "Created Le Chien"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
