class Tag < ApplicationRecord
    has_many :restaurant_tags
    has_many :restaurants, through: :restaurant_tags
end
