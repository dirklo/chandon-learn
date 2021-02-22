class Document < ApplicationRecord
    belongs_to :unit
    has_many :document_results
    has_many :users_completed, through: :document_results, source: :user
    has_rich_text :content
end
