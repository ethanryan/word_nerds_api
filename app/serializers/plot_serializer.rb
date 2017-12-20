class PlotSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :genre_id
end
