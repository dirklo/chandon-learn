class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :content
      t.boolean :correct
      t.string :photo_url
      t.integer :question_id

      t.timestamps
    end
  end
end
