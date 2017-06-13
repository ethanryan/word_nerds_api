class StorySerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :content,
             :user_id,
             :genres,
             :user,
             :characters,
             :paragraphs,
             :plots
end

#to make serializer, in rails terminal:::
#rails g serializer [name_of_model_making_serializer_for]
