class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :restaurant_tags
    has_many :tags, through: :restaurant_tags
    belongs_to :area

    
    def self.price_ranges
        pr = Restaurant.all.map{ |r| r.price_range} .uniq.sort
    end

    # ----------for seeding data, not needed for app functioning: ------------

    def self.add_price_range
        no_price = Restaurant.all.select { |r| r.price_range == nil }
        no_price.each do |r| 
            r.update(price_range: rand(1..5)) 
        end
    end

    def self.add_restaurant_tag
        no_tags = Restaurant.all.select { |r| r.restaurant_tags == [] }
        no_tags.each do |r| 
            RestaurantTag.create(restaurant_id: r.id, tag_id: rand(1..8))
            RestaurantTag.create(restaurant_id: r.id, tag_id: rand(1..8))
        end
    end
end
