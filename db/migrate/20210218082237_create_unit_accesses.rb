class CreateUnitAccesses < ActiveRecord::Migration[6.1]
  def change
    create_table :unit_accesses do |t|
      t.integer :user_id
      t.integer :unit_id

      t.timestamps
    end
  end
end
