class UsersController < ApplicationController
    # before_action :set_user

    def show
    end

    def find_lunch_form
        # set_user
        @areas = Area.all
        @tags = Tag.all
    end

    def get_lunch

    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :area_id, tag_attributes: [:id], restaurant_attributes: [:price_range])
    end
end
