class AddColumnsToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :story_genre_names, :string
    add_column :stories, :story_plot_titles, :string
  end
end
