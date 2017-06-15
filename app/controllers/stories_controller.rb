class StoriesController < ApplicationController #correct?

  def index
    stories = Story.all
    render json: stories
  end

  def create

    #  make a new story with title and user_id from params
    story = Story.new(story_params)

    # story.createContent("genre", "story_characters") #calling createContent method in story model
    story.createContent("genre", "story_characters") #calling createContent method in story model

    story.save
    ###trying to add characters here...
    characters = characters_params.map do |character_hash|
      character = Character.new(character_hash)
      character.story_id = story.id
      # story.replaceAll(story.content, "HERO", character.name) #calling this here, in loop, replacing archetypes with user input character names
      # story.replaceAll(story.content, "HERO", character.name) #calling this here, in loop, replacing archetypes with user input character names
      # "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
      character.save

      # story.content.gsub!("HERO", character.name) #substituting story content instances of "HERO" with character's name if character is hero, and modifies string in place, saving it (without exclamation mark, gsub wasn't being saved)

      character.archetype === "hero" ? story.content.gsub!("HERO", character.name) : false
      character.archetype === "hero" && character.gender === "he" ? story.content.gsub!("hero_he/she", "he") : false
      character.archetype === "hero" && character.gender === "he" ? story.content.gsub!("hero_his/her", "his") : false
      character.archetype === "hero" && character.gender === "he" ? story.content.gsub!("hero_him/her", "him") : false
      character.archetype === "hero" && character.gender === "she" ? story.content.gsub!("hero_he/she", "she") : false
      character.archetype === "hero" && character.gender === "she" ? story.content.gsub!("hero_his/her", "her") : false
      character.archetype === "hero" && character.gender === "she" ? story.content.gsub!("hero_him/her", "her") : false

      character.archetype === "shadow" ? story.content.gsub!("SHADOW", character.name) : false
      character.archetype === "shadow" && character.gender === "he" ? story.content.gsub!("shadow_he/she", "he") : false
      character.archetype === "shadow" && character.gender === "he" ? story.content.gsub!("shadow_his/her", "his") : false
      character.archetype === "shadow" && character.gender === "he" ? story.content.gsub!("shadow_him/her", "him") : false
      character.archetype === "shadow" && character.gender === "she" ? story.content.gsub!("shadow_he/she", "she") : false
      character.archetype === "shadow" && character.gender === "she" ? story.content.gsub!("shadow_his/her", "her") : false
      character.archetype === "shadow" && character.gender === "she" ? story.content.gsub!("shadow_him/her", "her") : false

      character.archetype === "friend" ? story.content.gsub!("FRIEND", character.name) : false
      character.archetype === "friend" && character.gender === "he" ? story.content.gsub!("friend_he/she", "he") : false
      character.archetype === "friend" && character.gender === "he" ? story.content.gsub!("friend_his/her", "his") : false
      character.archetype === "friend" && character.gender === "he" ? story.content.gsub!("friend_him/her", "him") : false
      character.archetype === "friend" && character.gender === "she" ? story.content.gsub!("friend_he/she", "she") : false
      character.archetype === "friend" && character.gender === "she" ? story.content.gsub!("friend_his/her", "her") : false
      character.archetype === "friend" && character.gender === "she" ? story.content.gsub!("friend_him/her", "her") : false

      character.archetype === "mentor" ? story.content.gsub!("MENTOR", character.name) : false
      character.archetype === "mentor" && character.gender === "he" ? story.content.gsub!("mentor_he/she", "he") : false
      character.archetype === "mentor" && character.gender === "he" ? story.content.gsub!("mentor_his/her", "his") : false
      character.archetype === "mentor" && character.gender === "he" ? story.content.gsub!("mentor_him/her", "him") : false
      character.archetype === "mentor" && character.gender === "she" ? story.content.gsub!("mentor_he/she", "she") : false
      character.archetype === "mentor" && character.gender === "she" ? story.content.gsub!("mentor_his/her", "her") : false
      character.archetype === "mentor" && character.gender === "she" ? story.content.gsub!("mentor_him/her", "her") : false

      character.archetype === "lover" ? story.content.gsub!("LOVER", character.name) : false
      character.archetype === "lover" && character.gender === "he" ? story.content.gsub!("lover_he/she", "he") : false
      character.archetype === "lover" && character.gender === "he" ? story.content.gsub!("lover_his/her", "his") : false
      character.archetype === "lover" && character.gender === "he" ? story.content.gsub!("lover_him/her", "him") : false
      character.archetype === "lover" && character.gender === "she" ? story.content.gsub!("lover_he/she", "she") : false
      character.archetype === "lover" && character.gender === "she" ? story.content.gsub!("lover_his/her", "her") : false
      character.archetype === "lover" && character.gender === "she" ? story.content.gsub!("lover_him/her", "her") : false


      #hero_he/she for lowercase
      #her_HE/SHE for uppercase

      #hero_his/her for lowercase
      #hero_HIS/HER for uppercase

      #hero_him/her for lowercase
      #HERO_HIS/HER for uppercase


      character.archetype === "shadow" ? story.content.gsub!("SHADOW", character.name) : false #false instead of null
      character.archetype === "friend" ? story.content.gsub!("FRIEND", character.name) : false #false instead of null

      #ternary operator above is saying if character.archetype equals hero, replace "HERO" in story with that character's name, else return null
      # if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
      # byebug

    end #end loop


    story.save
    render json: story
  end #end of create story method
  # # {
  # id: 1,
  # user_id: 1,
  # content: "..." ,
  # pargraphs: [
  #   {id: 4, text: ".....", order: 1},
  #   {},
  #   {},...
  # ]
  # characters: [
  #   {id: 1, archetype: 'hero', name: 'wonder woman', gender: 'women'},
  #   {},
  #   {}
  # ]
  # }

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
    render json: stories #for patch request
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
