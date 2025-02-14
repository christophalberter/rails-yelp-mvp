# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "123456789", category: "french" },
  { name: "Sushi Zen", address: "Shibuya, Tokyo", phone_number: "987654321", category: "japanese" },
  { name: "La Trattoria", address: "Via Roma, 123, Rome", phone_number: "246813579", category: "italian" },
  { name: "Panda Express", address: "Beijing, China", phone_number: "135792468", category: "chinese" },
  { name: "Chez Léon", address: "Brussels, Belgium", phone_number: "357951357", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end
