require 'net/http'
require 'open-uri'
require 'json'
 
class GetPlaces
 
  URL = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=lunch+in+City+of+London&key=AIzaSyBYm6fmd3--ZbWcY-IQRc02y4ZZ5vU6j20"
 
  def get_places
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
 
  def parse_json
    places = JSON.parse(self.get_places)
  end
end
 

# places = GetPlaces.new
# places = places.parse_json


# places["results"].each do |restaurant|
#     SohoRestaurant.create(location: "Soho", name: restaurant["name"], address: restaurant["formatted_address"], price_range: restaurant["price_level"], rating: restaurant["rating"], google_id: restaurant["place_id"])
# end