class Genre < ApplicationRecord
  has_many :plots
  has_many :paragraphs, through: :plots
  has_many :story_paragraphs, through: :paragraphs
  has_many :stories, through: :story_paragraphs
  #replace above with has_and_belongs_to_many ??
end
