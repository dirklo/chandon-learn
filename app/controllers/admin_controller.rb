class AdminController < ApplicationController
    def home
        @units = Unit.all
        render 'admin/home'
    end
end