class StorySerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :created_at,
             :updated_at,
             :user_id,
             :content,
             :story_genre_names,
             :story_plot_titles,
             :user,
             :genres,
             :characters,
             :paragraphs,
             :plots
end

#to make serializer, in rails terminal:::
#rails g serializer [name_of_model_making_serializer_for]
