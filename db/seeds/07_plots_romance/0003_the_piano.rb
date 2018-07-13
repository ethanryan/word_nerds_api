plot = Plot.create([
  { genre_id: 7, #romance
    title: "The Piano",
    author: "Jane Campion"
  },
])

paragraphs = Paragraph.create([
  { plot_id: "#{plot.first.id}", #the piano
    order: 1,
    text: "A mute named HERO is sold into marriage to SHADOW, a New Zealand frontiersman. HERO brings hero_his/her young child, FRIEND. HERO expresses hero_him/herself through hero_his/her piano playing and through sign language, for which FRIEND serves as interpreter. HERO, FRIEND, and their piano are deposited on a desolate beach, where they spend the night. The following day, SHADOW arrives with an aboriginal crew and shadow_his/her friend, LOVER, a fellow forester who has adopted many of the native customs, including tattooing lover_his/her face. Shy and diffident SHADOW tells HERO there is no room in shadow_his/her small house for the piano, and abandons it on the beach.",
  },

  { plot_id: "#{plot.first.id}", #the piano
    order: 2,
    text: "They give LOVER a note, but LOVER can't read. They spend the day on the beach. HERO plays the piano. LOVER suggests that SHADOW trade the piano for land. SHADOW agrees to LOVER's request to receive lessons from HERO, oblivious to LOVER's attraction. HERO doesn't want an illiterate with filthy hands touching hero_his/her piano, but SHADOW demands hero_he/she go. When HERO arrives at LOVER's hut, hero_he/she is stunned to find that LOVER has perfectly tuned the piano. LOVER proposes that HERO earn the piano back at one piano key per 'lesson,' provided lover_he/she can watch and do what lover_he/she wants while hero_he/she plays. HERO agrees."
  },

  { plot_id: "#{plot.first.id}", #the piano
    order: 3,
    text: "The lessons with LOVER become a slow seduction for HERO's affection. LOVER requests gradually increased intimacy in exchange for more keys. HERO reluctantly accepts. Realizing HERO only wants the piano, LOVER gives up and simply returns it, saying their arrangement 'is making you a whore, and me wretched.' Despite having hero_his/her piano back, HERO finds hero_him/herself missing LOVER. HERO returns to LOVER one afternoon, where they submit to their desire for one another. SHADOW hears them making love as shadow_he/she walks by LOVER's house, and watches them through a crack in the wall. Outraged, shadow_he/she follows HERO the next day in the forest, and rapes hero_him/her. SHADOW then imprisons HERO while shadow_he/she works on shadow_his/her timberland. SHADOW lets HERO out after making hero_him/her promise not to see LOVER again."
  },

  { plot_id: "#{plot.first.id}", #the piano
    order: 4,
    text: "HERO sends FRIEND with a package for LOVER, containing a single piano key inscribed with the words: 'Dear LOVER, you have my heart. HERO'. FRIEND brings the piano key instead to SHADOW. After reading the love note burnt onto the piano key, SHADOW returns home with an axe and cuts off HERO's index finger. SHADOW then sends FRIEND to LOVER with the severed finger wrapped in cloth, with the message that if LOVER ever attempts to see HERO again, shadow_he/she will chop off more fingers. Later that night, SHADOW has a nightmare. Shaken, SHADOW sends HERO and FRIEND away with LOVER. While being rowed to TRICKSTER's ship, HERO asks LOVER to throw the piano overboard."
  },

  { plot_id: "#{plot.first.id}", #the piano
    order: 5,
    text: "In their new home, HERO lives happily with LOVER and FRIEND, where hero_he/she has started to give piano lessons. HERO's severed finger has been replaced with a silver finger made by LOVER. HERO has also started to take speech lessons in order to learn how to speak again. HERO says that hero_he/she imagines hero_his/her piano in its grave in the sea, and hero_him/herself suspended above it, which lulls hero_him/her to sleep."
  },
])

  # [  #script 1
  #  'script 1 first scene',
  #  'script 1 second scene',
  #  'script 1 third scene',
  #  'script 1 fourth scene',
  #  'script 1 fifth scene'
  # ],
