class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]
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
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        if is_admin?
            @user.unit_accesses.destroy_all
            @user.document_results.destroy_all
            @user.quiz_results.destroy_all
            @user.destroy
            redirect_to admin_home_path
        else
            redirect_to home_path
        end
    end

    private
        def set_user
            @user = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:username, :email, :password, :admin)
        end
end