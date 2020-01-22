class RestaurantsController < ApplicationController
    # before_action :set_restaurant
    
    def index
        @restaurants = Restaurant.all 
    end 

    def first_result
        rest_id = session[:restaurant_id]
        @restaurant = Restaurant.find(rest_id)
    end

    def show
        rest_id = session[:restaurant_id]
        @restaurant = Restaurant.find(rest_id)
        @request_id = @restaurant.google_id
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
