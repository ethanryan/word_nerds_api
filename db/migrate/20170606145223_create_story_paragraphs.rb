class CreateStoryParagraphs < ActiveRecord::Migration[5.1]
  def change
    create_table :story_paragraphs do |t|
      t.integer :story_id
      t.integer :paragraph_id

      t.timestamps
    end
  end
end
