class Unit < ApplicationRecord
    has_many :documents
    has_many :quizzes
    has_many :unit_accesses
    has_many :users, through: :unit_accesses

    def has_access?(user)
        user.accessible_units.include?(self)
    end
end
