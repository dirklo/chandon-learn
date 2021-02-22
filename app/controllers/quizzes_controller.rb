class QuizzesController < ApplicationController
    before_action :set_quiz, only: %i[ show edit update destroy ]
    def index
        if is_admin?
            @Quizzes = Quiz.all
            render 'quizzes/index'
        else
            redirect_to home_page_path
        end
    end

    def show
    end

    def new
        if is_admin?
            @units = Unit.all
            @quiz = Quiz.new
            @quiz.questions.build
            @quiz.questions.first.answers.build
            @quiz.questions.first.answers.build
            render 'quizzes/new'
        else
            redirect_to home_page_path
        end
    end

    def edit
        if is_admin?
            @units = Unit.all
            render 'quizzes/edit'
        else
            redirect_to home_page_path
        end
    end

    def create
        if is_admin?
            @quiz = Quiz.create(quiz_params)
            redirect_to edit_unit_path(@quiz.unit)
        else
            redirect_to home_page_path
        end
    end

    def update
        if is_admin?
            @quiz.update(quiz_params)
            redirect_to edit_unit_path(@quiz.unit)
        else
            redirect_to home_page_path
        end
    end

    def destroy
        if is_admin?
            @quiz.questions.each do |question|
                question.answers.destroy_all
            end
            @quiz.questions.destroy_all
            @quiz.destroy
            redirect_to admin_home_path
        else
            redirect_to home_page_path
        end
    end

    private
        def set_quiz
            @quiz = Quiz.find(params[:id])
        end

        def quiz_params
            params.require(:quiz).permit(:title, :description, :unit_id, :questions_attributes => [:id, :content, :kind, :_destroy, :answers_attributes => [:id, :content, :correct, :comment, :_destroy]])
        end
end