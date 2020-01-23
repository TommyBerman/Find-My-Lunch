class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

    validates :title, :content, :stars, :user_id, :restaurant_id, presence: true
    validates :content, length: {minimum:20, maximum:250}
    validates :stars, numericality: {less_than_or_equal_to:5, greater_than:0}
    
    
end
