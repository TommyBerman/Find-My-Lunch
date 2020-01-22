class Session < ApplicationRecord
    # helper_method :find_restaurants


    # first match by location
    # then match by tags
    # then match by price range
    # custom errors at each step if nothing meeting that description here is something close
    def self.find_restaurants(params)
        location_filter = Restaurant.all.select { |r| 
            r.area_id == params[:area_id].to_i
            }
        # location_filter gives all restaurants in that area

        params[:tag_ids].shift
        tags = params[:tag_ids]
        restaurants = location_filter
        n = 0
        tags.count.times do |tag|
            restaurants = restaurants.select { |r| r.tags.find_by(id: tags[n].to_i) }
            n += 1
        end
        tags_filter = restaurants
        # tags filter gives restaurants in area meeting correct tags

        price = params[:price_range].to_i
        final_filter = tags_filter.select { |r| r.price_range <= price } 
        # final filter gives final array of results

        if final_filter.count > 0
            final_filter
        elsif tags_filter.count > 0
            flash[:notice] = "Sorry! We couldn't find anything in your price range, but here's something nearby that meets your cravings!"
            tags_filter
        else
            flash[:notice] = "Sorry! We couldn't find anything that meets all your requirements, but here is something nearby that you might like!"
            location_filter
        end
    end




    # do methods above here
end
  