
# User.destroy_all
# Restaurant.destroy_all


# ---------using faker data to seed DB----------
# 10.times do
#     User.create(name: Faker::Name.name, location: Faker::Address.street_address, email: Faker::Internet.email, password: 'password')
# end

# 10.times do
#     Restaurant.create(name: Faker::Restaurant.name, location: Faker::Address.street_address, price_range: Faker::Number.between(from: 1, to: 10),rating: Faker::Number.between(from: 1, to: 5))
# end


#     Tag.create(name: 'spicy' description: 'yellow' )
#     Tag.create(name: 'healthy' description: 'yellow' )
#     Tag.create(name: 'greasy' description: 'yellow' )
#     Tag.create(name: 'meaty' description: 'yellow' )
#     Tag.create(name: 'grab-n-go' description: 'yellow' )
#     Tag.create(name: 'fancy 'description: 'yellow' )
#     Tag.create(name: 'hearty' description: 'yellow' )
#     Tag.create(name: 'sweet' description: 'yellow' )
    
# -----------adding restaurants from google API ------------
# places = GetPlaces.new
# places = places.parse_json
# places["results"].each do |restaurant|
#   TheCityRestaurant.create(location: "The City", name: restaurant["name"], address: restaurant["formatted_address"], price_range: restaurant["price_level"], rating: restaurant["rating"], google_id: restaurant["place_id"])
# end

# CamdenRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# CanaryWharfRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# GreenwichRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# KingsCrossRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# PaddingtonRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# ShoreditchRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# SohoRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# SouthBankRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# TheCityRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# WestminsterRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: restaurant[:location], price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

