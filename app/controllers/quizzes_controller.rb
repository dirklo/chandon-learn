class QuizzesController < ApplicationController
    before_action :set_quiz, only: %i[ show edit update ]
    def index
        @Quizzes = Quiz.all
        render 'quizzes/index'
    end

    def show
    end

    def new
        @quiz = Quiz.new
    end

    def edit
    end

    def create
        @quiz = Quiz.create(params.require(:quiz).permit(:title, :description, :unit_id))
        redirect_to quiz_path(@quiz)
    end

    def update
        @quiz.update(params.require(:quiz).permit(:content, :photo_url))
        redirect_to quiz_path(@quiz)
    end

    def destroy
        @quiz.destroy
        redirect_to quizzes_path
    end

    private
        def set_quiz
            @quiz = Quiz.find(params[:id])
        end
end