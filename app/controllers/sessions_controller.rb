class SessionsController < ApplicationController
  def new
  end

  def authenticate
    reset_session
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if !(user && user.authenticate(params[:password]))
      session[:user_id] = nil
      flash[:notice] = "Sorry we can't find those details..."
      redirect_to '/login'
    else
      flash[:notice] = "You have logged in successfully!"
      session[:user_id] = user.id
      redirect_to find_lunch_form_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "You have been logged out"
    redirect_to '/'
  end

  def find_lunch_form
    @areas = Area.all
    @tags = Tag.all
    @price_ranges = Restaurant.price_ranges
  end

  def get_lunch
    @options = Session.find_restaurants(session_params)
    @restaurant = @options.sample
    session[:restaurant_id] = @restaurant.id
    redirect_to first_result_path(@restaurant)
  end

  private

  def session_params(*args)
    params.require(:session).permit(:user_id, :area_id, :price_range, :restaurant_id, tag_ids: [])
  end

  
end
