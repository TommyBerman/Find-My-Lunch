class SessionsController < ApplicationController
  def new
  end

  def create
    @@user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if !(@@user && @@user.authenticate(params[:password]))
      session[:user_id] = nil
      flash[:notice] = "Sorry we can't find those details..."
      redirect_to '/login'
    else
      flash[:notice] = "You have logged in successfully!"
      session[:user_id] = @@user.id
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

  def find_lunch_form
    @areas = Area.all
    @tags = Tag.all
    @price_ranges = Restaurant.price_ranges
  end

  def get_lunch
    Session.find_restaurants(session_params)
    redirect_to restaurants_path
  end

  private

  def session_params(*args)
    params.require(:session).permit(:user_id, :area_id, :price_range, tag_ids: [])
  end

  
end
