class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update ]
    def index
        @users = User.all
        render 'users/index'
    end

    def show
    end

    def new
        @user = User.new
    end

    def edit
    end

    def create
        @user = User.create(params.require(:user).permit(:username, :email, :password, :admin))
        redirect_to user_path(@user)
    end

    def update
        @user.update(params.require(:user).permit(:username, :email, :password, :admin))
        redirect_to user_path(@user)
    end

    def destroy
        @user.destroy
        redirect_to home_path
    end

    private
        def set_user
            @user = User.find(params[:id])
        end
end