class Story < ApplicationRecord

  STORY_LENGTH = 5

  belongs_to :user
  has_many :characters
  has_many :story_paragraphs
  has_many :paragraphs, through: :story_paragraphs
  has_many :plots, through: :paragraphs
  has_many :genres, through: :plots

  def create_content(genre, characters)
    paragraphs = (1..STORY_LENGTH).to_a.map do |num|
     Paragraph.where({order: [num]}).order("RANDOM()").first
    end #end loop
    self.paragraphs << paragraphs
    self.content = self.story_content #calling story_content below
  end #end createContent


  def story_content
    full_story = self.paragraphs.map do |p|
      p.text
    end
  full_story.join("-----")
  end #end story_content


end #end of class
