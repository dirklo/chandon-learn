class CreateAnswerFields < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_fields do |t|
      t.string :content
      t.string :answer_content
      t.boolean :required
      t.belongs_to :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
