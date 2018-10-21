class AddUserNameToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :user_name, :string
  end
end
