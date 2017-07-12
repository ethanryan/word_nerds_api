class StoriesController < ApplicationController

  def index
    stories = Story.all
    render json: stories
  end

  # def change_character_names
  #   if character.archetype === "hero"
  #     story.content.gsub!("HERO", character.name)
  #   elsif character.archetype === "shadow"
  #     story.content.gsub!("SHADOW", character.name)
  #   elsif character.archetype === "friend"
  #     story.content.gsub!("FRIEND", character.name)
  #   elsif character.archetype === "lover"
  #     story.content.gsub!("LOVER", character.name)
  #   elsif character.archetype === "mentor"
  #     story.content.gsub!("MENTOR", character.name)
  #   elsif character.archetype === "trickster"
  #     story.content.gsub!("TRICKSTER", character.name)
  #   end
  # end


  def create

    #  make a new story with title and user_id from params
    story = Story.new(story_params)
    story.create_content("genre", "story_characters") #calling createContent method in story model

    story.save

    # story.create_story_characters("story_characters")

    characters = characters_params.map do |character_hash|
      character = Character.new(character_hash)
      character.story_id = story.id

      character.save

      # character.change_hero_name(story)

      character.change_character_names(story)

      character.change_character_genders(story)


      #substituting story content instances of "HERO" with character's name if character is hero, and modifies string in place, saving it (without exclamation mark, gsub wasn't being saved)
      # character.archetype === "hero" ? story.content.gsub!("HERO", character.name) : false
      # character.archetype === "shadow" ? story.content.gsub!("SHADOW", character.name) : false
      # character.archetype === "friend" ? story.content.gsub!("FRIEND", character.name) : false
      # character.archetype === "lover" ? story.content.gsub!("LOVER", character.name) : false
      # character.archetype === "mentor" ? story.content.gsub!("MENTOR", character.name) : false
      # character.archetype === "trickster" ? story.content.gsub!("TRICKSTER", character.name) : false

    #substituting each character's gender pronouns with user input genders for each character
      # character.archetype === "hero" && character.gender === "male" ? story.content.gsub!("hero_he/she", "he") : false
      # character.archetype === "hero" && character.gender === "male" ? story.content.gsub!("hero_his/her", "his") : false
      # character.archetype === "hero" && character.gender === "male" ? story.content.gsub!("hero_him/her", "him") : false
      # character.archetype === "hero" && character.gender === "female" ? story.content.gsub!("hero_he/she", "she") : false
      # character.archetype === "hero" && character.gender === "female" ? story.content.gsub!("hero_his/her", "her") : false
      # character.archetype === "hero" && character.gender === "female" ? story.content.gsub!("hero_him/her", "her") : false
      #
      # character.archetype === "shadow" && character.gender === "male" ? story.content.gsub!("shadow_he/she", "he") : false
      # character.archetype === "shadow" && character.gender === "male" ? story.content.gsub!("shadow_his/her", "his") : false
      # character.archetype === "shadow" && character.gender === "male" ? story.content.gsub!("shadow_him/her", "him") : false
      # character.archetype === "shadow" && character.gender === "female" ? story.content.gsub!("shadow_he/she", "she") : false
      # character.archetype === "shadow" && character.gender === "female" ? story.content.gsub!("shadow_his/her", "her") : false
      # character.archetype === "shadow" && character.gender === "female" ? story.content.gsub!("shadow_him/her", "her") : false
      #
      # character.archetype === "friend" && character.gender === "male" ? story.content.gsub!("friend_he/she", "he") : false
      # character.archetype === "friend" && character.gender === "male" ? story.content.gsub!("friend_his/her", "his") : false
      # character.archetype === "friend" && character.gender === "male" ? story.content.gsub!("friend_him/her", "him") : false
      # character.archetype === "friend" && character.gender === "female" ? story.content.gsub!("friend_he/she", "she") : false
      # character.archetype === "friend" && character.gender === "female" ? story.content.gsub!("friend_his/her", "her") : false
      # character.archetype === "friend" && character.gender === "female" ? story.content.gsub!("friend_him/her", "her") : false
      #
      # character.archetype === "lover" && character.gender === "male" ? story.content.gsub!("lover_he/she", "he") : false
      # character.archetype === "lover" && character.gender === "male" ? story.content.gsub!("lover_his/her", "his") : false
      # character.archetype === "lover" && character.gender === "male" ? story.content.gsub!("lover_him/her", "him") : false
      # character.archetype === "lover" && character.gender === "female" ? story.content.gsub!("lover_he/she", "she") : false
      # character.archetype === "lover" && character.gender === "female" ? story.content.gsub!("lover_his/her", "her") : false
      # character.archetype === "lover" && character.gender === "female" ? story.content.gsub!("lover_him/her", "her") : false
      #
      # character.archetype === "mentor" && character.gender === "male" ? story.content.gsub!("mentor_he/she", "he") : false
      # character.archetype === "mentor" && character.gender === "male" ? story.content.gsub!("mentor_his/her", "his") : false
      # character.archetype === "mentor" && character.gender === "male" ? story.content.gsub!("mentor_him/her", "him") : false
      # character.archetype === "mentor" && character.gender === "female" ? story.content.gsub!("mentor_he/she", "she") : false
      # character.archetype === "mentor" && character.gender === "female" ? story.content.gsub!("mentor_his/her", "her") : false
      # character.archetype === "mentor" && character.gender === "female" ? story.content.gsub!("mentor_him/her", "her") : false
      #
      # character.archetype === "trickster" && character.gender === "male" ? story.content.gsub!("trickster_he/she", "he") : false
      # character.archetype === "trickster" && character.gender === "male" ? story.content.gsub!("trickster_his/her", "his") : false
      # character.archetype === "trickster" && character.gender === "male" ? story.content.gsub!("trickster_him/her", "him") : false
      # character.archetype === "trickster" && character.gender === "female" ? story.content.gsub!("trickster_he/she", "she") : false
      # character.archetype === "trickster" && character.gender === "female" ? story.content.gsub!("trickster_his/her", "her") : false
      # character.archetype === "trickster" && character.gender === "female" ? story.content.gsub!("trickster_him/her", "her") : false

    end #end loop


    story.save
    render json: story
  end #end of create story method

  def show
    story = Story.find(params[:id])
    render json: story
  end

  def update
    # byebug
    story = Story.find(params[:id])
    story.update(story_params)
    story.save
    stories = Story.all #for patch request
    render json: stories #for patch request, but this should be story instead...
  end

  def destroy
    story = Story.find(params[:id])
    story.destroy
    render json: Story.all
  end

  private

  def story_params
    params.require(:story).permit(:content, :title, :user_id, :genre)
    # need content as attribute above so user can update story (update content)
  end

  def characters_params
    char_params = params.require(:story).permit( characters: [:archetype, :name, :gender] )
    char_params[:characters]
  end

end #end class
