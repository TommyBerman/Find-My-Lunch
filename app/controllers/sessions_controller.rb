class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if !(user && user.authenticate(params[:password]))
      session[:user_id] = nil
      flash[:notice] = "Sorry we can't find those details..."
      redirect_to '/login'
    else
      flash[:notice] = "You have logged in successfully!"
      session[:user_id] = user.id
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
