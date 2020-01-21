class Area < ApplicationRecord
    has_many :restaurants
    has_many :users
end
  