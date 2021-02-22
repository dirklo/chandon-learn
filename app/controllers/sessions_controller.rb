class SessionsController < ApplicationController

    def new
        @user = User.new
        render 'sessions/new'
    end
    
    def create
        @user = User.find_by(username: params[:user][:username]) || User.find_by(username: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:current_user_id] = @user.id
            redirect_to home_path
        else
            redirect_to home_page_path
        end
    end

    def destroy
        session.clear
        redirect_to home_page_path
    end

end