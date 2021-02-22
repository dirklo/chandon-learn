class UnitsController < ApplicationController
    before_action :set_unit, only: %i[ show edit update ]
    def show
        @documents = @unit.documents
        @quizzes = @unit.quizzes
    end

    def new
        if is_admin?
            @unit = Unit.new
        else
            redirect_to home_page_path
        end
    end

    def edit
        if is_admin?
            @documents = @unit.documents
            @quizzes = @unit.quizzes
        else
            redirect_to home_page_path
        end
    end

    def create
        if is_admin?
            @unit = Unit.create(unit_params)
            redirect_to admin_home_path
        else
            redirect_to home_page_path
        end
    end

    def update
        if is_admin?
            @unit.update(unit_params)
            redirect_to admin_home_path
        else
            redirect_to home_page_path
        end
    end

    def destroy
        if is_admin?
            @unit.destroy
            redirect_to admin_home_path
        else
            redirect_to home_page_path
        end
    end

    private
        def set_unit
            @unit = Unit.find(params[:id])
        end

        def unit_params
            params.require(:unit).permit(:title, :description)
        end
end