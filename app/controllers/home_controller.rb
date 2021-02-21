class HomeController < ApplicationController
    def index
        render 'home/index'
    end

    def student
        render 'home/student'
    end

    def admin
        if is_admin?
            @users = User.all
            @units = Unit.all
            render 'home/admin'
        else
            render 'home/student'
        end
    end
end 