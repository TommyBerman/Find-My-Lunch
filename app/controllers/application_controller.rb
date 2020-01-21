class ApplicationController < ActionController::Base
    before_action :set_current_user
    helper_method :logged_in?
    protect_from_forgery with: :exception

    def set_current_user
        if logged_in?
            @current_user = User.find(session[:user_id])
        else
            @current_user = nil
        end
    end

    def logged_in?
        !!session[:user_id]
    end
    
    def authorize
        redirect_to '/login' unless current_user
      end
end
