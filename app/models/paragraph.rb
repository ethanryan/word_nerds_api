class Paragraph < ApplicationRecord
  has_many :story_paragraphs
  has_many :stories, through: :story_paragraphs #is this right? need this so genres can have many stories.
  belongs_to :plot
end
