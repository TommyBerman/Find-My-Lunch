
User.destroy_all
Review.destroy_all
Restaurant.destroy_all
RestaurantTag.destroy_all
Tag.destroy_all
Area.destroy_all


# # ---------using faker data to seed DB----------

Tag.create(name: 'Spicy', description: 'Food with a kick to warm the cockles' )
Tag.create(name: 'Healthy', description: "Guilt-free lunch doesn't have to be boring" )
Tag.create(name: 'Greasy', description: 'Sometimes you just need something naughty' )
Tag.create(name: 'Meaty', description: 'Good ones for the carnivores' )
Tag.create(name: 'Grab-n-go', description: 'Quick food you can take away' )
Tag.create(name: 'Fancy', description: 'When you feel like something classy' )
Tag.create(name: 'Hearty', description: 'Food to fill you up and embrace you like a warm hug' )
Tag.create(name: 'Sweet', description: 'Indulge that sweet tooth' )
    
# # ----------adding areas and restaurants ----

camden = Area.create(name: "Camden")
canary_wharf = Area.create(name: "Canary Wharf")
greenwich = Area.create(name: "Greenwich")
kings_cross = Area.create(name: "King's Cross")
paddington = Area.create(name: "Paddington")
shoreditch = Area.create(name: "Shoreditch")
soho = Area.create(name: "Soho")
south_bank = Area.create(name: "South Bank")
the_city = Area.create(name: "The City")
westminster = Area.create(name: "Westminster")

# # -----------adding restaurants from google API ------------
@areas = Area.all
@areas.each do |ar|
  place_name = ar.name.gsub(/[ ']/, " " => "+", "'" => "%27")
  places = GetPlaces.new(place_name)
  places = places.parse_json
  
  places["results"].each do |restaurant|
    Restaurant.create(name:restaurant["name"], area_id: ar.id, address: restaurant["formatted_address"], price_range: restaurant["price_level"], google_rating: restaurant["rating"], google_id: restaurant["place_id"])
  end
end


# # ----creating restaurant tags randomly --------
500.times do
    RestaurantTag.create(restaurant: Restaurant.all.sample, tag: Tag.all.sample)
end

# # ----creating users tags randomly -------- DO NOT USE FORMAT INCORRECT

# 10.times do
#     User.create(name: Faker::Name.name, location: Faker::Address.street_address, email: Faker::Internet.email, password: 'password')
# end
