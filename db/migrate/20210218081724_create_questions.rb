class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :photo_url
      t.integer :quiz_id
      t.string :kind

      t.timestamps
    end
  end
end
