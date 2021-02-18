class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_user, :is_admin?

    def logged_in?
        !!session[:current_user_id]
    end

    def current_user
        User.find(session[:current_user_id])
    end

    def is_admin?
        current_user.admin
    end 
end
