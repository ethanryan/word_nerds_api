class Story < ApplicationRecord
  belongs_to :user
  has_many :characters
  has_many :story_paragraphs
  has_many :paragraphs, through: :story_paragraphs
  has_many :plots, through: :paragraphs #can i say this, even though paragraph belongs to plot?
  has_many :genres, through: :plots #can i say this, even though plot belongs to genre?
end
