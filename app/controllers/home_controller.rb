class HomeController < ApplicationController
    def index
        render 'home/index'
    end

    def home
        if is_admin?
            @users = User.all
            @units = Unit.all
            render 'home/admin'
        else
            @units = current_user.accessible_units
            render 'home/student'
        end
    end

    def admin
        if is_admin?
            @users = User.all
            @units = Unit.all
            render 'home/admin'
        else
            redirect_to home_path
        end
    end
end 