class UsersController < ApplicationController

    def show
      @user = User.find(params[:id])
      @restaurant = Restaurant.find(session[:restaurant_id])
    end

    def splash
      render 'splash'
    end
    
    def new
      @areas = Area.all
      @user = User.new
    end
    
    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        flash[:errors] = user.errors.full_messages
        redirect_to '/signup'
      end
    end
    
    def edit
      set_user
      @areas = Area.all
    end

    def update
      set_user
      @user.update(user_params)
      if @user.valid?
        flash[:notice] = "Account details updated successfully"
        session[:user_id] = @user.id
        redirect_to @user
      else
        flash[:errors] = user.errors.full_messages
        redirect_to edit_user_path(@user)
      end
    end

    def destroy
      set_user
      @user.destroy
      flash[:notice] = "Bye #{@user.name}! Your account was successfully deleted, sign up again to use the app!"
      redirect_to signup_path
    end
    
    private
  
    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :area_id, tag_attributes: [:id], restaurant_attributes: [:price_range], review_attributes: [])
    end

end
