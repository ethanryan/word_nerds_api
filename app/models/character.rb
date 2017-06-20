class Character < ApplicationRecord
  belongs_to :story
  # enum gender: [ :he, :she, :it, :they ]
  enum gender: [ :male, :female, :it, :they ]
  enum archetype: [ :hero, :shadow, :friend, :lover, :mentor, :goon, :trickster, :guardian, :herald, :extra ]
  #above should make gender and archetype enumerable datatypes

  def change_character_names(story)
    self.archetype === "hero" ? story.content.gsub!("HERO", self.name) : false
    self.archetype === "shadow" ? story.content.gsub!("SHADOW", self.name) : false
    self.archetype === "friend" ? story.content.gsub!("FRIEND", self.name) : false
    self.archetype === "lover" ? story.content.gsub!("LOVER", self.name) : false
    self.archetype === "mentor" ? story.content.gsub!("MENTOR", self.name) : false
    self.archetype === "trickster" ? story.content.gsub!("TRICKSTER", self.name) : false
  end

  def change_character_genders(story)
    self.archetype === "hero" && self.gender === "male" ? story.content.gsub!("hero_he/she", "he") : false
    self.archetype === "hero" && self.gender === "male" ? story.content.gsub!("hero_his/her", "his") : false
    self.archetype === "hero" && self.gender === "male" ? story.content.gsub!("hero_him/her", "him") : false
    self.archetype === "hero" && self.gender === "female" ? story.content.gsub!("hero_he/she", "she") : false
    self.archetype === "hero" && self.gender === "female" ? story.content.gsub!("hero_his/her", "her") : false
    self.archetype === "hero" && self.gender === "female" ? story.content.gsub!("hero_him/her", "her") : false

    self.archetype === "shadow" && self.gender === "male" ? story.content.gsub!("shadow_he/she", "he") : false
    self.archetype === "shadow" && self.gender === "male" ? story.content.gsub!("shadow_his/her", "his") : false
    self.archetype === "shadow" && self.gender === "male" ? story.content.gsub!("shadow_him/her", "him") : false
    self.archetype === "shadow" && self.gender === "female" ? story.content.gsub!("shadow_he/she", "she") : false
    self.archetype === "shadow" && self.gender === "female" ? story.content.gsub!("shadow_his/her", "her") : false
    self.archetype === "shadow" && self.gender === "female" ? story.content.gsub!("shadow_him/her", "her") : false

    self.archetype === "friend" && self.gender === "male" ? story.content.gsub!("friend_he/she", "he") : false
    self.archetype === "friend" && self.gender === "male" ? story.content.gsub!("friend_his/her", "his") : false
    self.archetype === "friend" && self.gender === "male" ? story.content.gsub!("friend_him/her", "him") : false
    self.archetype === "friend" && self.gender === "female" ? story.content.gsub!("friend_he/she", "she") : false
    self.archetype === "friend" && self.gender === "female" ? story.content.gsub!("friend_his/her", "her") : false
    self.archetype === "friend" && self.gender === "female" ? story.content.gsub!("friend_him/her", "her") : false

    self.archetype === "lover" && self.gender === "male" ? story.content.gsub!("lover_he/she", "he") : false
    self.archetype === "lover" && self.gender === "male" ? story.content.gsub!("lover_his/her", "his") : false
    self.archetype === "lover" && self.gender === "male" ? story.content.gsub!("lover_him/her", "him") : false
    self.archetype === "lover" && self.gender === "female" ? story.content.gsub!("lover_he/she", "she") : false
    self.archetype === "lover" && self.gender === "female" ? story.content.gsub!("lover_his/her", "her") : false
    self.archetype === "lover" && self.gender === "female" ? story.content.gsub!("lover_him/her", "her") : false

    self.archetype === "mentor" && self.gender === "male" ? story.content.gsub!("mentor_he/she", "he") : false
    self.archetype === "mentor" && self.gender === "male" ? story.content.gsub!("mentor_his/her", "his") : false
    self.archetype === "mentor" && self.gender === "male" ? story.content.gsub!("mentor_him/her", "him") : false
    self.archetype === "mentor" && self.gender === "female" ? story.content.gsub!("mentor_he/she", "she") : false
    self.archetype === "mentor" && self.gender === "female" ? story.content.gsub!("mentor_his/her", "her") : false
    self.archetype === "mentor" && self.gender === "female" ? story.content.gsub!("mentor_him/her", "her") : false

    self.archetype === "trickster" && self.gender === "male" ? story.content.gsub!("trickster_he/she", "he") : false
    self.archetype === "trickster" && self.gender === "male" ? story.content.gsub!("trickster_his/her", "his") : false
    self.archetype === "trickster" && self.gender === "male" ? story.content.gsub!("trickster_him/her", "him") : false
    self.archetype === "trickster" && self.gender === "female" ? story.content.gsub!("trickster_he/she", "she") : false
    self.archetype === "trickster" && self.gender === "female" ? story.content.gsub!("trickster_his/her", "her") : false
    self.archetype === "trickster" && self.gender === "female" ? story.content.gsub!("trickster_him/her", "her") : false
  end

end #end class
