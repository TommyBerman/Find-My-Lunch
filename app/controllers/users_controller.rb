class UsersController < ApplicationController

    # before_action :set_user

    def show
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
          redirect_to '/'
        else
            flash[:errors] = user.errors.full_messages
          redirect_to '/signup'
        end
      end
    
 
    
      private
    
      def set_user
        @user = User.find(params[:id])
       end
      
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :area_id, tag_attributes: [:id], restaurant_attributes: [:price_range])
      end

end
