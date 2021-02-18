class CreateDocumentResults < ActiveRecord::Migration[6.1]
  def change
    create_table :document_results do |t|
      t.integer :document_id
      t.integer :user_id

      t.timestamps
    end
  end
end
