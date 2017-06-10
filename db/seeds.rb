# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  name: 'bob'
])

story = Story.create([
  title: 'first story',
  user_id: 1,
  content: 'this is the plot of the first story'
])

story_2 = Story.create([
  title: 'second story',
  user_id: 1,
  content: 'this is the second story, story #2'
])


characters = Character.create([
  {
    story_id: 1,
    name: "Batman",
    archetype: 0, #0 is hero
    gender: 0 #0 is male
  },

  {
    story_id: 1,
    name: "The Joker",
    archetype: 1, #1 is shadow
    gender: 0 #0 is male
  }
])

genres = Genre.create([
  { name: 'horror' },
  { name: 'action' },
  { name: 'scifi' },
  { name: 'fantasy' },
  { name: 'comedy' },
  { name: 'drama' },
  { name: 'romance' },
  { name: 'western' },
  { name: 'family' },
  { name: 'random' },
  { name: 'user_generated' },
])


plot = Plot.create([
  { genre_id: 1, #horror
    title: "Halloween",
    #plot_id #1
    author: "whoever wrote Halloween -- John Carpenter?"
  },

  { genre_id: 1, #horror
    title: "Another Scary Movie",
    #plot_id #2
    author: "i wrote this one as a test"
  },

  { genre_id: 2, #comedy
    title: "Home Alone",
    #plot_id #3
    author: "whoever wrote Home Alone"
  },

  { genre_id: 2, #comedy
    title: "Another Comedy",
    #plot_id #4
    author: "test"
  },
])


# story_paragraph = Story_paragraph.create([
#   #creating this to associate first story with first 5 paragraphs,
#   #to test to see if relationships are working
#   { story_id: 1},
#   { paragraph_id: 1},
#   { paragraph_id: 2},
#   { paragraph_id: 3},
#   { paragraph_id: 4},
#   { paragraph_id: 5},
# ])


paragraphs = Paragraph.create([

  #halloween paragraphs below:
  {plot_id: 1, #plot keeps track of plot, which keeps track of genre.
    #story_id: 1, #adding story_id, since join table relates story to paragraph -- doesn't work either
    order: 1,
    text: "In the small town, 6-year-old <span class='shadow'>SHADOW</span>, while dressed in a clown costume, murders his older sister by stabbing her with a kitchen knife. Fifteen years later, on the night before Halloween, <span class='shadow'>SHADOW</span> escapes from a sanitarium, where he's been since the murder. He steals a car."
  },

  {plot_id: 1,
    order: 2,
    text: "The following day, Halloween, 21-year-old <span class='shadow'>SHADOW</span>, now dressed in a blue jumpsuit and a white mask, returns to his hometown and begins stalking high school student <span class='hero'>HERO</span>. <span class='hero'>HERO</span> informs <span class='friend'>FRIEND</span> that someone is following her, but she dismisses her concerns. Later, at her house, <span class='hero'>HERO</span> is startled to see <span class='shadow'>SHADOW</span> outside in the yard</span>,  staring into her room. <span class='shadow'>SHADOW</span>'s psychiatrist, <span class='mentor'>MENTOR</span>, having anticipated <span class='shadow'>SHADOW</span>'s return home, goes to the local cemetery only to discover that <span class='shadow'>SHADOW</span>'s sister's headstone is missing. <span class='mentor'>MENTOR</span> meets with the sheriff, and the two of them search for <span class='shadow'>SHADOW</span>."
  },

  {plot_id: 1,
    order: 3,
    text: "That night, <span class='hero'>HERO</span> babysits, while <span class='friend'>FRIEND</span> babysits across the street. When <span class='friend'>FRIEND</span> gets a call from her boyfriend asking her to pick him up, she drops <span class='lover'>LOVER</span> off at the house. <span class='friend'>FRIEND</span> gets in her car. <span class='shadow'>SHADOW</span>, who was hiding in the backseat, strangles her before slitting her throat. While playing hide-and-seek, the kid spots <span class='shadow'>SHADOW</span> carrying <span class='friend'>FRIEND</span>'s corpse and tries to tell <span class='hero'>HERO</span>, who doesn't believe in any 'bogeyman'."
  },

  {plot_id: 1,
    order: 4,
    text: "Feeling unsettled, <span class='hero'>HERO</span> puts the kids to bed and goes across the street, where she discovers the corpses of <span class='friend'>FRIEND</span> and her boyfriend. <span class='hero'>HERO</span> is suddenly attacked by <span class='shadow'>SHADOW</span>. She falls down the staircase, but quickly recovers. Fleeing, she screams for help, to no avail. Running back to the house, she realizes she lost the keys. <span class='shadow'>SHADOW</span> approaches. <span class='hero'>HERO</span> panics and screams. Luckily, the kid opens the door in time. <span class='hero'>HERO</span> instructs the kids to hide. The phone line is dead. As she sits down in horror next to the couch, <span class='shadow'>SHADOW</span> appears and tries to stab her, but she stabs him in the side of his neck with a knitting needle and he collapses."
  },

  {plot_id: 1,
    order: 5,
    text: "<span class='hero'>HERO</span> goes upstairs telling the kids she killed the 'bogeyman', but <span class='shadow'>SHADOW</span> reappears in pursuit of her. Telling the kids to hide and lock themselves in the bathroom, <span class='hero'>HERO</span> opens the French windows to feign escape and hides in a bedroom closet. <span class='shadow'>SHADOW</span> punches a hole in the closet door to get to her. <span class='hero'>HERO</span> frantically undoes a metal clothes hanger to stick <span class='shadow'>SHADOW</span> in the eye. <span class='shadow'>SHADOW</span> collapses. <span class='hero'>HERO</span> tells</span> the kids to go find help. <span class='shadow'>SHADOW</span> gets up and tries to strangle <span class='hero'>HERO</span>, but <span class='mentor'>MENTOR</span> arrives in time to save her. <span class='mentor'>MENTOR</span> shoots <span class='shadow'>SHADOW</span>, who falls from the second-story window. <span class='shadow'>SHADOW</span> is nowhere to be found when <span class='mentor'>MENTOR</span> looks outside."
  },

  #test horror paragraphs below::
  {plot_id: 2, #another plot, for testing
    order: 1,
    text: "paragraph 1 for test -- horror genre"
  },

  {plot_id: 2, #another plot, for testing
    order: 2,
    text: "paragraph 2 for test -- horror genre"
  },

  {plot_id: 2, #another plot, for testing
    order: 3,
    text: "paragraph 3 for test -- horror genre"
  },

  {plot_id: 2, #another plot, for testing
    order: 4,
    text: "paragraph 4 for test -- horror genre"
  },

  {plot_id: 2, #another plot, for testing
    order: 5,
    text: "paragraph 5 for test -- horror genre"
  },

####home alone:::

#Comedy plot – Home Alone

  {plot_id: 3, #home alone
    order: 1,
    text: "<span class='hero'>HERO</span>'s family is preparing for a Christmas vacation overseas. The night before their departure, <span class='hero'>HERO</span> is ridiculed by his siblings and cousins. After a scuffle with his older brother, <span class='hero'>HERO</span> is sent to the third floor of the house, where he wishes that his family would disappear. During the night, heavy winds cause damage to power lines, which causes the alarm clocks to reset. The family oversleeps. In the confusion and rush to get to the airport in time to catch their flight, <span class='hero'>HERO</span> is accidentally left behind.",
  },

  {plot_id: 3, #home alone
    order: 2,
    text: "Meanwhile, <span class='hero'>HERO</span> wakes up to find the house empty. Believing his wish came true, <span class='hero'>HERO</span> is overjoyed with freedom. However, <span class='hero'>HERO</span>'s joy turns to fear as he encounters his neighbor, <span class='mentor'>MENTOR</span>, who is rumored to have murdered his family with a shovel. <span class='hero'>HERO</span> also encounters <span class='shadow'>SHADOW</span> and GOON, a pair of burglars who have targeted <span class='hero'>HERO</span>'s house. <span class='hero'>HERO</span> is initially able to keep them away by making the house appear as if the family is at home, but they eventually realize that <span class='hero'>HERO</span> is home alone.",
  },

  {plot_id: 3, #home alone
    order: 3,
    text: "On Christmas Eve, <span class='hero'>HERO</span> overhears <span class='shadow'>SHADOW</span> and GOON discussing plans for breaking into his house that night. <span class='hero'>HERO</span> goes to church. He meets <span class='mentor'>MENTOR</span>, who sits with <span class='hero'>HERO</span> and they briefly speak. <span class='hero'>HERO</span> learns that <span class='mentor'>MENTOR</span> is actually a nice man and that the rumors about him are false. He tells <span class='hero'>HERO</span> he is watching the choir because his granddaughter is in it, but he never gets to see her because he and his son are estranged. <span class='hero'>HERO</span> suggests he try to reconcile.",
  },

  {plot_id: 3, #home alone
    order: 4,
    text: "<span class='hero'>HERO</span> returns home and rigs the house with numerous booby traps. <span class='shadow'>SHADOW</span> and GOON break in, springing the traps and suffering various injuries. While the duo chases <span class='hero'>HERO</span> around the house, he calls the police and escapes the house, luring the duo into a neighboring vacant home. <span class='shadow'>SHADOW</span> and GOON manage to catch him and discuss how they will get their revenge, but <span class='mentor'>MENTOR</span> sneaks in and knocks them unconscious with his snow shovel before they can do anything to <span class='hero'>HERO</span>. The police arrive and arrest <span class='shadow'>SHADOW</span> and GOON.",
  },

  {plot_id: 3, #home alone
    order: 5,
    text: "On Christmas Day, <span class='hero'>HERO</span> is disappointed to find that his family is still gone. He then hears <span class='lover'>LOVER</span> enter the house and call for him. They reconcile and are soon joined by the rest of <span class='hero'>HERO</span>'s family. <span class='hero'>HERO</span> keeps silent about his encounter with <span class='shadow'>SHADOW</span> and GOON, although <span class='friend'>FRIEND</span> finds <span class='shadow'>SHADOW</span>'s missing gold tooth. Across the street, <span class='mentor'>MENTOR</span> notices <span class='hero'>HERO</span> and the pair acknowledge each other before <span class='mentor'>MENTOR</span> and his family go home.",
  },

  #test comedy paragraphs
  #another comedy plot's paragraphs below:
  {plot_id: 4, #another plot, for testing
    order: 1,
    text: "paragraph 1 for test -- horror genre"
  },

  {plot_id: 4, #another plot, for testing
    order: 2,
    text: "paragraph 2 for test -- horror genre"
  },

  {plot_id: 4, #another plot, for testing
    order: 3,
    text: "paragraph 3 for test -- horror genre"
  },

  {plot_id: 4, #another plot, for testing
    order: 4,
    text: "paragraph 4 for test -- horror genre"
  },

  {plot_id: 4, #another plot, for testing
    order: 5,
    text: "paragraph 5 for test -- horror genre"
  },
])
