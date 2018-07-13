plot = Plot.create([
  { genre_id: 7, #romance
    title: "La Strada",
    author: "Federico Fellini"
  },
])

paragraphs = Paragraph.create([
  { plot_id: "#{plot.first.id}", #la strada (italian movie)
    order: 1,
    text: "HERO learns that FRIEND has died since going on the road with the strongman, SHADOW. A year later, SHADOW returns to ask HERO's mother if HERO will take FRIEND's place. HERO's mother accepts $10,000 in cash, and HERO departs the same day. SHADOW is an itinerant street performer, entertaining crowds by breaking an iron chain bound tightly across shadow_his/her chest, then passing the hat for tips. SHADOW teaches HERO to play the snare drum and trumpet, dance a bit, and clown for the audience. Despite HERO's willingness to please, SHADOW relies on intimidation and cruelty to maintain shadow_his/her domination.",
  },

  { plot_id: "#{plot.first.id}", #la strada (italian movie)
    order: 2,
    text: "Finally, HERO rebels and leaves, making hero_his/her way into town. There hero_he/she watches the act of another street entertainer, LOVER, a talented high wire artist and clown. When SHADOW finds HERO there, shadow_he/she forcibly takes hero_him/her back. They join a ragtag travelling circus where LOVER already works. LOVER teases SHADOW at every opportunity. After LOVER drenches SHADOW with a pail of water, SHADOW chases after shadow_his/her tormentor with shadow_his/her knife drawn. As a result, SHADOW is briefly jailed. Eventually, TRICKSTER fires both SHADOW and LOVER from the travelling circus."
  },

  { plot_id: "#{plot.first.id}", #la strada (italian movie)
    order: 3,
    text: "After SHADOW's release from the prison, LOVER proposes to HERO that there are alternatives to HERO's servitude, and imparts lover_his/her philosophy that everything and everyone has a purpose: even a pebble, even her. MENTOR, a nun, suggests that HERO's purpose in life is comparable to her own. Yet when HERO offers SHADOW marriage, SHADOW brushes hero_him/her off."
  },

  { plot_id: "#{plot.first.id}", #la strada (italian movie)
    order: 4,
    text: "The separate paths of LOVER and SHADOW cross for the last time on an empty stretch of road, when SHADOW comes upon LOVER fixing a flat tire. As HERO watches in horror, SHADOW strikes LOVER on the head several times. LOVER complains that lover_his/her watch is broken, then collapses and dies. SHADOW hides the body and pushes the car off the road, where it bursts into flames. The killing breaks HERO's spirit. After ten days, hero_his/her affect remains flat, and hero_his/her eyes lifeless. Finally SHADOW abandons hero_him/her while hero_he/she is taking a nap, leaving some clothes, money, and a trumpet."
  },

  { plot_id: "#{plot.first.id}", #la strada (italian movie)
    order: 5,
    text: "Some years later, SHADOW overhears a woman, TRICKSTER, singing a tune HERO often played. SHADOW learns that TRICKSTER's father had found HERO on the beach and kindly taken hero_him/her in. However, HERO had wasted away and died. SHADOW gets drunk and wanders to the beach, where shadow_he/she breaks down in tears."
  },
])

  # [  #script 1
  #  'script 1 first scene',
  #  'script 1 second scene',
  #  'script 1 third scene',
  #  'script 1 fourth scene',
  #  'script 1 fifth scene'
  # ],
