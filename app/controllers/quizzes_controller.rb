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
        @quiz.questions.build
        @quiz.questions.first.answers.build
        @quiz.questions.first.answers.build
    end

    def edit
    end

    def create
        @quiz = Quiz.create(quiz_params)
        redirect_to quiz_path(@quiz)
    end

    def update
        @quiz.update(quiz_params)
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

        def quiz_params
            params.require(:quiz).permit(:title, :description, :unit_id, :questions_attributes => [:content, :kind, :_destroy, :answers_attributes => [:content, :correct, :comment, :_destroy]])
        end
end