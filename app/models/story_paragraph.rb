class StoryParagraph < ApplicationRecord
  belongs_to :story
  belongs_to :paragraph
end
