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

  def hero_is_male(string)
    male_pronouns = [ ["hero_he/she", "HE"], ["hero_his/her", "HIS"], ["hero_him/her", "HIM"] ]
    male_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end
  def hero_is_female(string)
    female_pronouns = [ ["hero_he/she", "SHE"], ["hero_his/her", "HER"], ["hero_him/her", "HER"] ]
    female_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end

  def shadow_is_male(string)
    male_pronouns = [ ["shadow_he/she", "HE"], ["shadow_his/her", "HIS"], ["shadow_him/her", "HIM"] ]
    male_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end
  def shadow_is_female(string)
    female_pronouns = [ ["shadow_he/she", "SHE"], ["shadow_his/her", "HER"], ["shadow_him/her", "HER"] ]
    female_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end

  def friend_is_male(string)
    male_pronouns = [ ["friend_he/she", "HE"], ["friend_his/her", "HIS"], ["friend_him/her", "HIM"] ]
    male_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end
  def friend_is_female(string)
    female_pronouns = [ ["friend_he/she", "SHE"], ["friend_his/her", "HER"], ["friend_him/her", "HER"] ]
    female_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end

  def lover_is_male(string)
    male_pronouns = [ ["lover_he/she", "HE"], ["lover_his/her", "HIS"], ["lover_him/her", "HIM"] ]
    male_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end
  def lover_is_female(string)
    female_pronouns = [ ["lover_he/she", "SHE"], ["lover_his/her", "HER"], ["lover_him/her", "HER"] ]
    female_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end

  def mentor_is_male(string)
    male_pronouns = [ ["mentor_he/she", "HE"], ["mentor_his/her", "HIS"], ["mentor_him/her", "HIM"] ]
    male_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end
  def mentor_is_female(string)
    female_pronouns = [ ["mentor_he/she", "SHE"], ["mentor_his/her", "HER"], ["mentor_him/her", "HER"] ]
    female_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end

  def trickster_is_male(string)
    male_pronouns = [ ["trickster_he/she", "HE"], ["trickster_his/her", "HIS"], ["trickster_him/her", "HIM"] ]
    male_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end
  def trickster_is_female(string)
    female_pronouns = [ ["trickster_he/she", "SHE"], ["trickster_his/her", "HER"], ["trickster_him/her", "HER"] ]
    female_pronouns.each {|replacement| string.gsub!(replacement[0], replacement[1])}
    string
  end


  def change_character_genders(story)
    #if no gender is selected, default gender for all characters is female
    self.archetype === "hero" && self.gender === "male" ? hero_is_male(story.content) : hero_is_female(story.content)
    self.archetype === "shadow" && self.gender === "male" ? shadow_is_male(story.content) : shadow_is_female(story.content)
    self.archetype === "friend" && self.gender === "male" ? friend_is_male(story.content) : friend_is_female(story.content)

    self.archetype === "lover" && self.gender === "male" ? lover_is_male(story.content) : lover_is_female(story.content)
    self.archetype === "mentor" && self.gender === "male" ? mentor_is_male(story.content) : mentor_is_female(story.content)
    self.archetype === "trickster" && self.gender === "male" ? trickster_is_male(story.content) : trickster_is_female(story.content)
  end #end change_character_genders

end #end class
