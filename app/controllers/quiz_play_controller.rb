class QuizPlayController < ApplicationController
    before_action :set_quiz, only: %i[ play results ]
    
    def play
        @questions = @quiz.questions
        render "quizzes/play"
    end

    def results
        render "quizzes/results"
    end

    private
        def set_quiz
            @quiz = Quiz.find(params[:id])
        end
end