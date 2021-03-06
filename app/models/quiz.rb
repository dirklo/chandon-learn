class Quiz < ApplicationRecord
    belongs_to :unit
    has_many :questions
    has_many :quiz_results
    has_many :users_taken, through: :quiz_results, source: :user
    accepts_nested_attributes_for :questions, allow_destroy: true
end
