class ReviewsController < ApplicationController
validates :title, :content, :stars, :user_id, :restaurant_id, presence: true
validates :content, length: {minimum:20, maximum:250}

def new
    @review = Review.new
    @user = @current_user
    @restaurant = Restaurant.find(session[:restaurant_id])
  end
  
  def create
    review = Review.create(review_params)
    if review.valid?
      redirect_to @restaurant
      else
        flash[:errors] = review.errors.full_messages
        redirect_to new_review_path
      end

  end

    private

    def review_params
        params.require(:review).permit(:title, :content, :stars, :user_id, :restaurant_id)
    end
end