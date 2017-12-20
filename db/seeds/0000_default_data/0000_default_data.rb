#note on gender pronouns:
#he / his / him
#she / her / her
#subject / object / possessive

#hero_he/she for lowercase
#hero_his/her for lowercase
#hero_him/her for lowercase
#avoid uppercase, start sentences with HERO instead

#This file should contain all the record creation needed to seed the database with its default values.
#The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#Examples:
#
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create([
 name: 'bob',
 password: 'bob',
 email_address: 'bob@bobby.com'
])

user_2 = User.create([
  name: 'sammy',
  password: 'sammy',
  email_address: 'sammy@sam.net'
])

story_1 = Story.create([
 title: 'first story',
 user_id: 1,
 content: 'this is the plot of the first story ----- for test'
])

story_2 = Story.create([
 title: 'second story',
 user_id: 2,
 content: 'this is the second story, story #2'
])


characters = Character.create([
 { story_id: 1,
   name: "Batman",
   archetype: 0, #0 is hero
   gender: 0 #0 is male
 },

 { story_id: 1,
   name: "The Joker",
   archetype: 1, #1 is shadow
   gender: 0 #0 is male
 }
])

genres = Genre.create([
 { name: 'horror' },
 { name: 'scifi' },
 { name: 'action' },
 { name: 'drama' },
 { name: 'fantasy' },
 { name: 'comedy' },
 { name: 'romance' },
 { name: 'western' },
 { name: 'family' },
 { name: 'random' },
 { name: 'user_generated' },
])


 # plot = Plot.create([
 # #plot_id #1
 # { genre_id: 1, #horror
 # title: "Halloween",
 # author: "John Carpenter"
 # },
 # #plot_id #2
 # { genre_id: 1, #horror
 # title: "Alien",
 # author: "Dan O'Bannon, Ronald Shusett"
 # },
 # #plot_id #3
 # { genre_id: 2, #scifi
 # title: "The Matrix",
 # author: "Lana Wachowski, Lilly Wachowski"
 # },
 # #plot_id #4
 # { genre_id: 2, #scifi
 # title: "Star Wars",
 # author: "George Lucas"
 # },
 # #plot_id #5
 # { genre_id: 2, #scifi
 # title: "E.T.",
 # author: "Steven Spielberg"
 # },
 # #plot_id #6
 # { genre_id: 2, #scifi
 # title: "Terminator",
 # author: "James Cameron"
 # },
 # #plot_id #7
 # { genre_id: 3, #action
 # title: "Die Hard",
 # author: "Steven E. de Souza, Jeb Stuart"
 # },
 # #plot_id #8
 # { genre_id: 4, #drama
 # title: "Thelma and Louise",
 # author: "Callie Khouri"
 # },
 # #plot_id #9
 # { genre_id: 6, #comedy
 # title: "Home Alone",
 # author: "Chris Colombus"
 # },
 # #plot_id #10
 # { genre_id: 7, #romance
 # title: "Beauty and the Beast",
 # author: "who knows"
 # },
 # #plot_id #11
 # { genre_id: 7, #romance
 # title: "La Strada",
 # author: "Federico Fellini"
 # },
 # #plot_id #12
 # { genre_id: 7, #romance
 # title: "The Piano",
 # author: "Jane Campion"
 # },
 # ])
