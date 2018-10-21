class StorySerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :created_at,
             :updated_at,
             :user_id,
             :user_name, #adding this
             :content,
             :story_genre_names,
             :story_plot_titles,
             # :user, #will take this out, and add in user_name
             :genres,
             :characters,
             :paragraphs,
             :plots
end

#to make serializer, in rails terminal:::
#rails g serializer [name_of_model_making_serializer_for]
