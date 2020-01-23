class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restuarant




  
  def my_review
    restaurant = params[:review][:restuarant_id]
    @reviews = Review.all.select {
      |review| review.restaurant_id.find_by(id: restaurant.to_i)
    }
  end



end
