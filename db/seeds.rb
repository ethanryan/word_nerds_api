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
    text: "In the small town, 6-year-old SHADOW, while dressed in a clown costume, murders his older sister by stabbing her with a kitchen knife. Fifteen years later, on the night before Halloween, SHADOW escapes from a sanitarium, where he's been since the murder. He steals a car."
  },

  {plot_id: 1,
    order: 2,
    text: "The following day, Halloween, 21-year-old SHADOW, now dressed in a blue jumpsuit and a white mask, returns to his hometown and begins stalking high school student HERO. HERO informs FRIEND that someone is following her, but she dismisses her concerns. Later, at her house, HERO is startled to see SHADOW outside in the yard, staring into her room. SHADOW's psychiatrist, MENTOR, having anticipated SHADOW's return home, goes to the local cemetery only to discover that SHADOW's sister's headstone is missing. MENTOR meets with the sheriff, and the two of them search for SHADOW."
  },

  {plot_id: 1,
    order: 3,
    text: "That night, HERO babysits, while FRIEND babysits across the street. When FRIEND gets a call from her boyfriend asking her to pick him up, she drops LOVER off at the house. FRIEND gets in her car. SHADOW, who was hiding in the backseat, strangles her before slitting her throat. While playing hide-and-seek, the kid spots SHADOW carrying FRIEND's corpse and tries to tell HERO, who doesn't believe in any 'bogeyman'."
  },

  {plot_id: 1,
    order: 4,
    text: "Feeling unsettled, HERO puts the kids to bed and goes across the street, where she discovers the corpses of FRIEND and her boyfriend. HERO is suddenly attacked by SHADOW. She falls down the staircase, but quickly recovers. Fleeing, she screams for help, to no avail. Running back to the house, she realizes she lost the keys. SHADOW approaches. HERO panics and screams. Luckily, the kid opens the door in time. HERO instructs the kids to hide. The phone line is dead. As she sits down in horror next to the couch, SHADOW appears and tries to stab her, but she stabs him in the side of his neck with a knitting needle and he collapses."
  },

  {plot_id: 1,
    order: 5,
    text: "HERO goes upstairs telling the kids she killed the 'bogeyman', but SHADOW reappears in pursuit of her. Telling the kids to hide and lock themselves in the bathroom, HERO opens the French windows to feign escape and hides in a bedroom closet. SHADOW punches a hole in the closet door to get to her. HERO frantically undoes a metal clothes hanger to stick SHADOW in the eye. SHADOW collapses. HERO tells the kids to go find help. SHADOW gets up and tries to strangle HERO, but MENTOR arrives in time to save her. MENTOR shoots SHADOW, who falls from the second-story window. SHADOW is nowhere to be found when MENTOR looks outside."
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
    text: "HERO's family is preparing for a Christmas vacation overseas. The night before their departure, HERO is ridiculed by his siblings and cousins. After a scuffle with his older brother, HERO is sent to the third floor of the house, where he wishes that his family would disappear. During the night, heavy winds cause damage to power lines, which causes the alarm clocks to reset. The family oversleeps. In the confusion and rush to get to the airport in time to catch their flight, HERO is accidentally left behind.",
  },

  {plot_id: 3, #home alone
    order: 2,
    text: "Meanwhile, HERO wakes up to find the house empty. Believing his wish came true, HERO is overjoyed with freedom. However, HERO's joy turns to fear as he encounters his neighbor, MENTOR, who is rumored to have murdered his family with a shovel. HERO also encounters SHADOW and GOON, a pair of burglars who have targeted HERO's house. HERO is initially able to keep them away by making the house appear as if the family is at home, but they eventually realize that HERO is home alone.",
  },

  {plot_id: 3, #home alone
    order: 3,
    text: "On Christmas Eve, HERO overhears SHADOW and GOON discussing plans for breaking into his house that night. HERO goes to church. He meets MENTOR, who sits with HERO and they briefly speak. HERO learns that MENTOR is actually a nice man and that the rumors about him are false. He tells HERO he is watching the choir because his granddaughter is in it, but he never gets to see her because he and his son are estranged. HERO suggests he try to reconcile.",
  },

  {plot_id: 3, #home alone
    order: 4,
    text: "HERO returns home and rigs the house with numerous booby traps. SHADOW and GOON break in, springing the traps and suffering various injuries. While the duo chases HERO around the house, he calls the police and escapes the house, luring the duo into a neighboring vacant home. SHADOW and GOON manage to catch him and discuss how they will get their revenge, but MENTOR sneaks in and knocks them unconscious with his snow shovel before they can do anything to HERO. The police arrive and arrest SHADOW and GOON.",
  },

  {plot_id: 3, #home alone
    order: 5,
    text: "On Christmas Day, HERO is disappointed to find that his family is still gone. He then hears LOVER enter the house and call for him. They reconcile and are soon joined by the rest of HERO's family. HERO keeps silent about his encounter with SHADOW and GOON, although FRIEND finds SHADOW's missing gold tooth. Across the street, MENTOR notices HERO and the pair acknowledge each other before MENTOR and his family go home.",
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
