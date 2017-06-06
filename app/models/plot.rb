class Plot < ApplicationRecord
  belongs_to :genre
  has_many :paragraphs
  has_many :story_paragraphs, through: :paragraphs
  has_many :stories, through: :story_paragraphs
end
