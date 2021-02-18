class User < ActiveRecord::Base
    has_secure_password
    has_many :unit_accesses
    has_many :accessible_units, through: :unit_accesses, source: :unit
    has_many :document_results
    has_many :quiz_results
end