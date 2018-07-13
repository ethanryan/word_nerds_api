#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    "genre_id": 5, #fantasy
    "title": "The Princess Bride",
    "author": "null"
  }
])

#select array within Paragraph.create(), then click: Packages > Pretty JSON > Prettify
paragraphs = Paragraph.create([
  {
    "plot_id": "#{plot.first.id}",
    "order": 1,
    "text": "Beautiful young LOVER lives on a farm. Whenever LOVER orders the farmhand HERO to do chores for lover_him/her, HERO complies and answers, \"As you wish\". LOVER eventually realizes hero_he/she loves lover_him/her and admits lover_him/her love for hero_him/her. HERO leaves to seek hero_his/her fortune so they can marry, but hero_his/her ship is attacked by the Dread Pirate Roberts and HERO is believed dead."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "Five years later, LOVER reluctantly agrees to marry Prince SHADOW, heir to the throne. Before the wedding, LOVER is kidnapped by three outlaws: a short Sicilian boss named Vizzini, a gigantic wrestler from Greenland named TRICKSTER, and a Spanish fencing master named FRIEND, who seeks revenge against a six-fingered man who killed his father. The outlaws are pursued separately by HERO and Prince SHADOW with a complement of soldiers."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "HERO catches up to the outlaws at the top of the Cliffs of Insanity. HERO defeats FRIEND in a duel and knocks friend_him/her unconscious, chokes TRICKSTER until trickster_he/she blacks out, and kills Vizzini by tricking him into drinking poison. He takes LOVER prisoner and they flee, stopping to rest at the edge of a gorge. When LOVER correctly guesses that the masked vigilante is the Dread Pirate Roberts, lover_he/she becomes enraged. Distracted when SHADOW and shadow_his/her men appear in the distance, LOVER shoves HERO down the hill into the gorge and wishes death upon hero_him/her. As HERO tumbles down, hero_he/she shouts, \"As you wish!\" Realizing Dread Priate Roberts is HERO, LOVER jumps into the gorge after hero_him/her and they are reunited. They pass through the dangerous Fire Swamp but are captured on the other side by SHADOW and shadow_his/her sadistic six-fingered vizier, Count Ogre. LOVER agrees to return with SHADOW in exchange for HERO's release, but SHADOW secretly orders Ogre to lock HERO in a forest torture chamber."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "When LOVER expresses unhappiness at marrying SHADOW, shadow_he/she promises to search for HERO. However, shadow_his/her real plan is to start a war with the neighboring country of Guilder by killing LOVER and framing Guilder for lover_his/her death. Meanwhile, FRIEND and TRICKSTER reunite when SHADOW orders the thieves in the nearby forest arrested, and TRICKSTER tells FRIEND about Ogre. FRIEND decides that they need HERO's help to get into the castle. LOVER taunts SHADOW after learning that shadow_he/she never tried to find HERO. Enraged, SHADOW tortures HERO to death. When FRIEND hears cries of anguish echo through the forest, friend_he/she realizes they must be from HERO. FRIEND and TRICKSTER find the dead HERO and bring hero_him/her to a folk healer, Miracle MENTOR, who tells them that HERO is \"only mostly dead\" due to hero_his/her love for LOVER, and MENTOR revives hero_him/her to a state of heavy paralysis."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "After HERO, FRIEND, and TRICKSTER invade the castle, SHADOW panics and orders the wedding ceremony shortened. FRIEND finds and kills Ogre in a duel, repeatedly taunting him with friend_his/her greeting of vengeance: \"Hello, my name is FRIEND. You killed my father. Prepare to die.\" HERO finds LOVER, who is about to commit suicide, assuring lover_him/her that the marriage is invalid because shadow_he/she never said \"I do.\" Still partly paralyzed, HERO bluffs hero_his/her way out of a duel with SHADOW. HERO rides away with LOVER, FRIEND, and TRICKSTER before sharing a passionate kiss with LOVER."
  }
])
