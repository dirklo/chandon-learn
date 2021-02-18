class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :title
      t.text :content
      t.string :photo_url
      t.integer :unit_id

      t.timestamps
    end
  end
end
