class StoryCharacters < ApplicationController

  # def change_hero_name(story)
  #   character.archetype === "hero" ? story.content.gsub!("HERO", character.name) : false
  # end

  # def change_character_names(story)
  #   character.archetype === "hero" ? character.content.gsub!("HERO", character.name) : false
  #   character.archetype === "shadow" ? character.content.gsub!("SHADOW", character.name) : false
  #   character.archetype === "friend" ? character.content.gsub!("FRIEND", character.name) : false
  #   character.archetype === "lover" ? character.content.gsub!("LOVER", character.name) : false
  #   character.archetype === "mentor" ? character.content.gsub!("MENTOR", character.name) : false
  #   character.archetype === "trickster" ? character.content.gsub!("TRICKSTER", character.name) : false
  # end


#   def create_story_characters(characters)
#     characters = characters_params.map do |character_hash|
#       character = Character.new(character_hash)
#       character.story_id = story.id
#
#       character.save
#
#       character.archetype === "hero" ? story.content.gsub!("HERO", character.name) : false
#
#       character.archetype === "shadow" ? story.content.gsub!("SHADOW", character.name) : false
#       character.archetype === "friend" ? story.content.gsub!("FRIEND", character.name) : false
#       character.archetype === "lover" ? story.content.gsub!("LOVER", character.name) : false
#       character.archetype === "mentor" ? story.content.gsub!("MENTOR", character.name) : false
#       character.archetype === "trickster" ? story.content.gsub!("TRICKSTER", character.name) : false
#
#       # story.content.gsub!("HERO", character.name)
#       #substituting story content instances of "HERO" with character's name if character is hero, and modifies string in place, saving it (without exclamation mark, gsub wasn't being saved)
#
#       character.archetype === "hero" && character.gender === "male" ? story.content.gsub!("hero_he/she", "he") : false
#       character.archetype === "hero" && character.gender === "male" ? story.content.gsub!("hero_his/her", "his") : false
#       character.archetype === "hero" && character.gender === "male" ? story.content.gsub!("hero_him/her", "him") : false
#       character.archetype === "hero" && character.gender === "female" ? story.content.gsub!("hero_he/she", "she") : false
#       character.archetype === "hero" && character.gender === "female" ? story.content.gsub!("hero_his/her", "her") : false
#       character.archetype === "hero" && character.gender === "female" ? story.content.gsub!("hero_him/her", "her") : false
#
#       character.archetype === "shadow" && character.gender === "male" ? story.content.gsub!("shadow_he/she", "he") : false
#       character.archetype === "shadow" && character.gender === "male" ? story.content.gsub!("shadow_his/her", "his") : false
#       character.archetype === "shadow" && character.gender === "male" ? story.content.gsub!("shadow_him/her", "him") : false
#       character.archetype === "shadow" && character.gender === "female" ? story.content.gsub!("shadow_he/she", "she") : false
#       character.archetype === "shadow" && character.gender === "female" ? story.content.gsub!("shadow_his/her", "her") : false
#       character.archetype === "shadow" && character.gender === "female" ? story.content.gsub!("shadow_him/her", "her") : false
#
#       character.archetype === "friend" && character.gender === "male" ? story.content.gsub!("friend_he/she", "he") : false
#       character.archetype === "friend" && character.gender === "male" ? story.content.gsub!("friend_his/her", "his") : false
#       character.archetype === "friend" && character.gender === "male" ? story.content.gsub!("friend_him/her", "him") : false
#       character.archetype === "friend" && character.gender === "female" ? story.content.gsub!("friend_he/she", "she") : false
#       character.archetype === "friend" && character.gender === "female" ? story.content.gsub!("friend_his/her", "her") : false
#       character.archetype === "friend" && character.gender === "female" ? story.content.gsub!("friend_him/her", "her") : false
#
#       character.archetype === "lover" && character.gender === "male" ? story.content.gsub!("lover_he/she", "he") : false
#       character.archetype === "lover" && character.gender === "male" ? story.content.gsub!("lover_his/her", "his") : false
#       character.archetype === "lover" && character.gender === "male" ? story.content.gsub!("lover_him/her", "him") : false
#       character.archetype === "lover" && character.gender === "female" ? story.content.gsub!("lover_he/she", "she") : false
#       character.archetype === "lover" && character.gender === "female" ? story.content.gsub!("lover_his/her", "her") : false
#       character.archetype === "lover" && character.gender === "female" ? story.content.gsub!("lover_him/her", "her") : false
#
#       character.archetype === "mentor" && character.gender === "male" ? story.content.gsub!("mentor_he/she", "he") : false
#       character.archetype === "mentor" && character.gender === "male" ? story.content.gsub!("mentor_his/her", "his") : false
#       character.archetype === "mentor" && character.gender === "male" ? story.content.gsub!("mentor_him/her", "him") : false
#       character.archetype === "mentor" && character.gender === "female" ? story.content.gsub!("mentor_he/she", "she") : false
#       character.archetype === "mentor" && character.gender === "female" ? story.content.gsub!("mentor_his/her", "her") : false
#       character.archetype === "mentor" && character.gender === "female" ? story.content.gsub!("mentor_him/her", "her") : false
#
#       character.archetype === "trickster" && character.gender === "male" ? story.content.gsub!("trickster_he/she", "he") : false
#       character.archetype === "trickster" && character.gender === "male" ? story.content.gsub!("trickster_his/her", "his") : false
#       character.archetype === "trickster" && character.gender === "male" ? story.content.gsub!("trickster_him/her", "him") : false
#       character.archetype === "trickster" && character.gender === "female" ? story.content.gsub!("trickster_he/she", "she") : false
#       character.archetype === "trickster" && character.gender === "female" ? story.content.gsub!("trickster_his/her", "her") : false
#       character.archetype === "trickster" && character.gender === "female" ? story.content.gsub!("trickster_him/her", "her") : false
#
#     end #end loop
#   end #end method
#
#
#
#   private
#
#   def story_params
#     params.require(:story).permit(:content, :title, :user_id, :genre)
#     # need content as attribute above so user can update story (update content)
#   end
#
#   def characters_params
#     char_params = params.require(:story).permit( characters: [:archetype, :name, :gender] )
#     char_params[:characters]
#   end
#
end #end of class
