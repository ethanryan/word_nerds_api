class CreateParagraphs < ActiveRecord::Migration[5.1]
  def change
    create_table :paragraphs do |t|
      t.integer :plot_id
      t.integer :order
      t.string :text

      t.timestamps
    end
  end
end
