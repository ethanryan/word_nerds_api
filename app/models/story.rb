class Story < ApplicationRecord
  STORY_LENGTH = 5

  belongs_to :user
  has_many :characters
  has_many :story_paragraphs
  has_many :paragraphs, through: :story_paragraphs
  has_many :plots, through: :paragraphs #can i say this, even though paragraph belongs to plot?
  has_many :genres, through: :plots #can i say this, even though plot belongs to genre?

  def createContent(genre, characters)
    paragraphs = (1..STORY_LENGTH).to_a.map do |num|
     Paragraph.where({order: [num]}).order("RANDOM()").first #.html_safe #.html_safe doesn't seem to do anything here
    end

    self.paragraphs << paragraphs #shoveling paragraphs variable above into story.paragraphs
    #.html_safe #.html_safe doesn't seem to do anything here

    self.content = self.story_content #calling story_content below and setting story's content as story_content

    # Paragraph.where({ order: [1]}).order("RANDOM()").first
  end

  def story_content
    full_story = self.paragraphs.map do |p|
      # p.text
      p.text
    # end.join("\r\n\n\n\n\n")
    # end.split("\n")
    # end.join("").split("\r\n")
    # end.split("\r\n")
  # end.join("<br>").html_safe
  # end.join("\r\n--------------------------\r\n")
    end
    #instead of calling join on line above, calling it here. i think it reads better.
  full_story.join("<br>\r\n\r\n--------------------------\r\r\n\n")

  #trying to get line breaks between paragraphs
  end

end #end of class







####
###

###getting first paragraph by order:
#Client.where("orders_count = '2'")
#Paragraph.where("order = '1'") ,,,this doesn't work
#User.where({ name: ["Alice", "Bob"]})
#
# Paragraph.where({ order: ["1"]})

##this gets all paragraphs where order is 1
# Paragraph.where({ order: [1]})




# Paragraph.where({ order: [1]}).order("RANDOM()").first




#getting random paragraph:
### Paragraph.order("RANDOM()").first
