class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :restaurant_tags
    has_many :tags, through: :restaurant_tags
    belongs_to :area

    def self.add_price_range
        no_price = Restaurant.all.select { |r| r.price_range == nil }
        no_price.each do |r| 
            r.update(price_range: rand(1..5)) 
        end
    end

    def self.price_ranges
        pr = Restaurant.all.map{ |r| r.price_range} .uniq.sort
    end
end
