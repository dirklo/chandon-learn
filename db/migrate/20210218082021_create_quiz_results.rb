class CreateQuizResults < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_results do |t|
      t.string :score
      t.string :responses
      t.integer :user_id
      t.integer :quiz_id

      t.timestamps
    end
  end
end
