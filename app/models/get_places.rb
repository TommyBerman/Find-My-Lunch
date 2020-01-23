require 'net/http'
require 'open-uri'
require 'json'

 
class GetPlaces

  def initialize(url)
    @URL = url
  end
 
  # URL = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=lunch+in+westminster&key=AIzaSyBYm6fmd3--ZbWcY-IQRc02y4ZZ5vU6j20"

  # URL = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=lunch+in+Westminster&key=AIzaSyBYm6fmd3--ZbWcY-IQRc02y4ZZ5vU6j20"
 
  def get_places
    uri = URI.parse(@URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
 
  def parse_json
    places = JSON.parse(self.get_places)
  end
end

# ar = Area.find(10)
# place_name = ar.name.gsub(/[ ']/, " " => "+", "'" => "%27")
# test = GetPlaces.new("https://maps.googleapis.com/maps/api/place/textsearch/json?query=lunch+in+south+bank+london&key=AIzaSyBYm6fmd3--ZbWcY-IQRc02y4ZZ5vU6j20")
# test = test.parse_json
# pics = []
# test["results"].each do |r|
#   pics << r["photos"]["photo_reference"]
# end
# puts pics