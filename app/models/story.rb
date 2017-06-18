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
    end #end loop

    # hero = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # shadow = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # friend = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # #need to do this for each character?
    # #need to have the http://localhost:3000/characters route set up, and be able to see the persisted characters.
    #
    # characters = [hero, shadow, friend]

    #characters = ???
    #user adds character names and hit CreateStory, which triggers this method...
    #how do we get those characters, saved in state on the browser, to the backend, to be associated with the newly created story?

    self.paragraphs << paragraphs #shoveling paragraphs variable above into story.paragraphs
    #.html_safe #.html_safe doesn't seem to do anything here

    # self.characters << characters

    self.content = self.story_content #calling story_content below and setting story's content as story_content

    # Paragraph.where({ order: [1]}).order("RANDOM()").first
  end #end createContent


  def story_content
    full_story = self.paragraphs.map do |p|
      p.text #this works, but returns html tags too
      #need to call .innerHTML in client, not here, server-side...
      #update: React doesn't like innerHTML, calls it dangerous.
    end
  full_story.join("-----")
end #end story_content


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
