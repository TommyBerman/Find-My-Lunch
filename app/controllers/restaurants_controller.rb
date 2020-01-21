class RestaurantsController < ApplicationController
    # before_action :set_restaurant
    
    def index
        @restaurants = Restaurant.all 
    end 

    def show
        set_restaurant
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
