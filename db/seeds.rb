# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurants = [
  {
    name: "Epicure",
    address: "75008 Paris",
    phone_number: "0123456789",
    category: "french"
  },
  {
    name: "Sushi House",
    address: "123 Tokyo Street",
    phone_number: "9876543210",
    category: "japanese"
  },
  {
    name: "Bella Italia",
    address: "45 Rome Street",
    phone_number: "1122334455",
    category: "italian"
  },
  {
    name: "Golden Dragon",
    address: "88 Beijing Road",
    phone_number: "5566778899",
    category: "chinese"
  },
  {
    name: "Brussels Kitchen",
    address: "20 Brussels Avenue",
    phone_number: "9988776655",
    category: "belgian"
  }
]

restaurants.each do |attributes|
  Restaurant.create!(attributes)
end
