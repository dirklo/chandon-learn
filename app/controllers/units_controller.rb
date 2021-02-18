class UnitsController < ApplicationController
    before_action :set_unit, only: %i[ show edit update ]
    def show
        @documents = @unit.documents
        @quizzes = @unit.quizzes
    end

    def new
        @unit = Unit.new
    end

    def edit
    end

    def create
        @unit = Unit.create(params.require(:unit).permit(:title, :description))
        redirect_to unit_path(@unit)
    end

    def update
        @unit.update(params.require(:unit).permit(:title, :description))
        redirect_to unit_path(@unit)
    end

    def destroy
        @unit.destroy
        redirect_to units_path
    end

    private
        def set_unit
            @unit = Unit.find(params[:id])
        end
end