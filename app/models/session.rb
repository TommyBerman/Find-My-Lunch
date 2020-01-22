class Session < ApplicationRecord
    # helper_method :find_restaurants


    # first match by location
    # then match by tags
    # then match by price range
    # custom errors at each step if nothing meeting that description here is something close
    def self.find_restaurants(params)
        first_filter = Restaurant.all.select { |r| 
            r.area_id == params[:area_id].to_i
            }
        second_filter = find_restaurants.select { |r| 
        # finish this method iterating through restaurant tags
            r.restaurant_tags.include?(restaurant_tags.each ) 
            }
            
        byebug
    end
end
  