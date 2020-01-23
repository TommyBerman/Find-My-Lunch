class ReviewsController < ApplicationController


    def index
        # @Reviews = Review.find(restaurant_id: session[:restaurant_id] )
    end



    
    def create
        # # # @restaurant = Restaurant.find(session[:restaurant_id])
        review = Review.create(review_params)
        if review.valid?
            redirect_to restaurant_path(review_params[:restaurant_id])
        else
            flash[:errors] = review.errors.full_messages
            redirect_to restaurant_path(review_params[:restaurant_id])
        end
    end

    private
    
    def review_params
        params.require(:review).permit(:title, :content, :stars, :user_id, :restaurant_id)
    end
end


