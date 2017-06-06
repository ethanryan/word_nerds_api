class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.column :gender, :integer
      t.column :archetype, :integer
      t.integer :story_id

      t.timestamps
    end
  end
end
