
# User.destroy_all
# Restaurant.destroy_all


# ---------using faker data to seed DB----------

# 10.times do
#     User.create(name: Faker::Name.name, location: Faker::Address.street_address, email: Faker::Internet.email, password: 'password')
# end


    # Tag.create(name: 'spicy', description: 'Food with a kick to warm the cockles' )
    # Tag.create(name: 'healthy', description: "Guilt-free lunch doesn't have to be boring" )
    # Tag.create(name: 'greasy', description: 'Sometimes you just need something naughty' )
    # Tag.create(name: 'meaty', description: 'Good ones for the carnivores' )
    # Tag.create(name: 'grab-n-go', description: 'Quick food you can take away' )
    # Tag.create(name: 'fancy', description: 'When you feel like something classy' )
    # Tag.create(name: 'hearty', description: 'Food to fill you up and embrace you like a warm hug' )
    # Tag.create(name: 'sweet', description: 'Indulge that sweet tooth' )
    
# -----------adding restaurants from google API ------------
# places = GetPlaces.new
# places = places.parse_json
# places["results"].each do |restaurant|
#   WestminsterRestaurant.create(name: restaurant["name"], address: restaurant["formatted_address"], price_range: restaurant["price_level"], rating: restaurant["rating"], google_id: restaurant["place_id"])
# end


# ----------adding areas and restaurants ----




# camden = Area.create(name: "Camden")
# canary_wharf = Area.create(name: "Canary Wharf")
# greenwich = Area.create(name: "Greenwich")
# kings_cross = Area.create(name: "King's Cross")
# paddington = Area.create(name: "Paddington")
# shoreditch = Area.create(name: "Shoreditch")
# soho = Area.create(name: "Soho")
# south_bank = Area.create(name: "South Bank")
# the_city = Area.create(name: "The City")
# westminster = Area.create(name: "Westminster")

# CamdenRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: camden, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# CanaryWharfRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: canary_wharf, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# GreenwichRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: greenwich, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# KingsCrossRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: kings_cross, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# PaddingtonRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: paddington, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# ShoreditchRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: shoreditch, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# SohoRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: soho, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# SouthBankRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: south_bank, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# TheCityRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: the_city, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# WestminsterRestaurant.all.each do |restaurant|
#   Restaurant.create(name: restaurant[:name], area: westminster, price_range: restaurant[:price_range], address: restaurant[:address], google_rating: restaurant[:google_rating], google_id: restaurant[:google_id])
# end

# ----creating restaurant tags randomly --------
# 500.times do
#     RestaurantTag.create(restaurant: Restaurant.all.sample, tag: Tag.all.sample)
# end

