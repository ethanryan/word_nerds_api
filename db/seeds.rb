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
  { genre_id: 1,
    title: "Halloween",
    author: "whoever wrote Halloween"}
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
{plot_id: 1,
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
])
