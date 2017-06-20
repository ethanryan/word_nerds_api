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

users = User.create([
 name: 'bob',
 password: 'bob'
 ])

 story = Story.create([
 title: 'first story',
 user_id: 1,
 content: 'this is the plot of the first story ----- for test'
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


 plot = Plot.create([
 #plot_id #1
 { genre_id: 1, #horror
 title: "Halloween",
 author: "John Carpenter"
 },
 #plot_id #2
 { genre_id: 1, #horror
 title: "Alien",
 author: "Dan O'Bannon, Ronald Shusett"
 },
 #plot_id #3
 { genre_id: 2, #scifi
 title: "The Matrix",
 author: "Lana Wachowski, Lilly Wachowski"
 },
 #plot_id #4
 { genre_id: 2, #scifi
 title: "Star Wars",
 author: "George Lucas"
 },
 #plot_id #5
 { genre_id: 2, #scifi
 title: "E.T.",
 author: "Steven Spielberg"
 },
 #plot_id #6
 { genre_id: 2, #scifi
 title: "Terminator",
 author: "James Cameron"
 },
 #plot_id #7
 { genre_id: 3, #action
 title: "Die Hard",
 author: "Steven E. de Souza, Jeb Stuart"
 },

 #plot_id #8
 { genre_id: 4, #drama
 title: "Thelma and Louise",
 author: "Callie Khouri"
 },

 #plot_id #9
 { genre_id: 6, #comedy
 title: "Home Alone",
 author: "Chris Colombus"
 },

 #plot_id #10
 { genre_id: 7, #romance
 title: "Beauty and the Beast",
 author: "who knows"
 },

 #plot_id #11
 { genre_id: 7, #romance
 title: "La Strada",
 author: "Federico Fellini"
 },

 #plot_id #12
 { genre_id: 7, #romance
 title: "The Piano",
 author: "Jane Campion"
 },
 ])


 paragraphs_order_1 = Paragraph.create([
 {plot_id: 1, #halloween
 order: 1,
 text: "In the small town, 6-year-old SHADOW, while dressed in a clown costume, murders shadow_his/her older sister by stabbing her with a kitchen knife. Fifteen years later, on the night before Halloween, SHADOW escapes from a sanitarium, where shadow_he/she's been since the murder. SHADOW steals a car."
 },
 {plot_id: 2, #alien
 order: 1,
 text: "A commercial spaceship is on a return trip to Earth with a seven-member crew in stasis: Captain MENTOR, Executive Officer LOVER, Navigator FRIEND, Science Officer TRICKSTER, Warrant Officer HERO, and Engineers TRICKSTER and TRICKSTER. Detecting a mysterious transmission from a nearby planetoid, the ship's computer, TRICKSTER, awakens the crew. The spaceship lands on the planetoid and MENTOR, LOVER, and FRIEND head out to investigate. They discover the signal is coming from a derelict alien spacecraft. Inside, they find the remains of a large alien creature whose ribcage appears to have exploded from the inside.",
 },
 {plot_id: 3, #the matrix
 order: 1,
 text: "Police corner an infamous hacker, LOVER, in the abandoned hotel. LOVER escapes. A group of sinister TRICKSTERs lead the police on a rooftop chase. LOVER answers a ringing telephone and vanishes. Later, HERO meets MENTOR, who offers HERO the truth or blissful ignorance. HERO chooses truth. Reality disintegrates. Naked and weak, HERO awakens in a liquid-filled pod, one of countless people connected to an elaborate electrical system. A giant insectile machine arrives and chokes HERO while unscrewing a cable from HERO's neck. HERO falls down a disposal tube, and gets rescued by MENTOR's hovercraft.",
 },
 {plot_id: 4, #star wars
 order: 1,
 text: "The galaxy is in a civil war, and rebel spies have stolen plans to a space station capable of destroying entire planets. Rebel leader LOVER is in possession of the plans, but her ship is captured by Imperial forces under the command of evil Lord SHADOW. Before getting captured, LOVER hides the plans in the memory of a droid named TRICKSTER, along with a holographic recording. TRICKSTER escapes from the captured ship to the desert planet.",
 },
 {plot_id: 5, #E.T.
 order: 1,
 text: "A group of alien botanists collect samples in the forest. When SHADOW appears, the aliens flee in their spaceship, leaving HERO behind. Meanwhile, 10-year-old FRIEND is trying to hang out with MENTOR. While returning home from picking up a pizza, FRIEND discovers HERO hiding in their toolshed. FRIEND leaves candy to lure HERO inside. The next morning, FRIEND feigns illness to stay home and play with HERO. Later, MENTOR and LOVER meet HERO. HERO levitates several balls to represent the solar system, then revives a dead chrysanthemum.",
 },
 {plot_id: 6, #terminator
 order: 1,
 text: "Ten-year-old FRIEND lives in the city with foster parents. FRIEND's mother, MENTOR, had been preparing FRIEND for his future role as the leader of the human resistance against TRICKSTER, but was arrested after bombing a computer factory. TRICKSTER sends a new robot, SHADOW, back in time to kill FRIEND. SHADOW is an advanced prototype made of a mimetic alloy that allows it to shapeshift and transform parts of its anatomy into knives. SHADOW arrives under a freeway, kills a cop, and assumes his identity. Meanwhile, in the future, FRIEND sends a reprogrammed HERO back for protection.",
 },
 {plot_id: 7, #die hard
 order: 1,
 text: "Detective HERO arrives in the city to reconcile with LOVER. FRIEND drives HERO to the corporate headquarters for a company party. While HERO changes clothes, the party is disrupted by the arrival of SHADOW and his heavily armed terrorist group made up of MENTOR and nine thugs named TRICKSTER. The group seizes the tower and takes everyone inside as hostages, except for HERO, who manages to slip away.",
 },
 {plot_id: 8, #thelma and louise
 order: 1,
 text: "Two friends, FRIEND and HERO, leave for a vacation from their dreary lives. They stop for a drink at a roadhouse, where FRIEND dances with SHADOW. After FRIEND gets drunk, SHADOW attempts to rape her in the parking lot. HERO intervenes and threatens SHADOW with a gun. SHADOW lets FRIEND go, but yells insults at them as they walk away. HERO loses her temper and kills SHADOW. FRIEND wants to call the cops, but HERO says they won't believe her attempted rape claims. HERO decides to go on the run. FRIEND joins her.",
 },
 {plot_id: 9, #home alone
 order: 1,
 text: "HERO's family is preparing for a vacation overseas. The night before their departure, HERO is ridiculed by hero_his/her siblings and cousins. After a scuffle with hero_his/her older brother, HERO is sent to the third floor of the house, where hero_he/she wishes that hero_his/her family would disappear. During the night, heavy winds cause damage to power lines, which causes the alarm clocks to reset. The family oversleeps. In the confusion and rush to get to the airport in time to catch their flight, HERO is accidentally left behind.",
 },
 {plot_id: 10, #beauty and the beast
 order: 1,
 text: "An enchantress named TRICKSTER, disguised as an old beggar, offers a rose to young LOVER, in exchange for shelter from the cold in the castle. LOVER refuses. Angry, TRICKSTER transforms LOVER into a beast. To break the spell, LOVER must learn to love another and be loved in return before the rose's last petal falls. Ten years later, a young bookworm named HERO is bored of her village life. Everyone ridicules her but MENTOR, the town librarian, and a vain, muscular hunter named SHADOW. SHADOW is determined to marry HERO, who repeatedly rejects his advances.",
 },
 {plot_id: 11, #italian movie
 order: 1,
 text: "HERO learns that FRIEND has died since going on the road with the strongman, SHADOW. A year later, SHADOW returns to ask HERO's mother if HERO will take FRIEND's place. HERO's mother accepts $10,000 in cash, and HERO departs the same day. SHADOW is an itinerant street performer, entertaining crowds by breaking an iron chain bound tightly across his chest, then passing the hat for tips. SHADOW teaches HERO to play the snare drum and trumpet, dance a bit, and clown for the audience. Despite HERO's willingness to please, SHADOW relies on intimidation and cruelty to maintain his domination.",
 },
 {plot_id: 12, #the piano
 order: 1,
 text: "A mute named HERO is sold into marriage to SHADOW, a New Zealand frontiersman. HERO brings her young child, FRIEND. HERO expresses herself through her piano playing and through sign language, for which FRIEND serves as interpreter. HERO, FRIEND, and their piano are deposited on a desolate beach, where they spend the night. The following day, SHADOW arrives with an aboriginal crew and his friend, LOVER, a fellow forester who has adopted many of the native customs, including tattooing his face. Shy and diffident SHADOW tells HERO there is no room in his small house for the piano, and abandons it on the beach.",
 },
 ])

 paragraphs_order_2 = Paragraph.create([
 {plot_id: 1, #halloween
  order: 2,
  text: "The following day, Halloween, 21-year-old SHADOW, now dressed in a blue jumpsuit and a white mask, returns to shadow_his/her hometown and begins stalking high school student HERO. HERO informs FRIEND that someone is following hero_him/her, but FRIEND dismisses hero_his/her concerns. Later, at hero_his/her house, HERO is startled to see SHADOW outside in the yard, staring into hero_his/her room. SHADOW's psychiatrist, MENTOR, having anticipated SHADOW's return home, goes to the local cemetery only to discover that SHADOW's sister's headstone is missing. MENTOR meets with the sheriff, and the two of them search for SHADOW."
 },
 {plot_id: 2, #alien
  order: 2,
  text: "On the spaceship, HERO realizes the transmission is not a distress signal but a warning. In the alien ship, LOVER discovers a chamber containing hundreds of eggs. As LOVER inspects an egg, a creature, TRICKSTER, springs out, spits acid through LOVER's space helmet, and attaches itself to LOVER's face. MENTOR and FRIEND carry LOVER back to the spaceship. HERO refuses to let them aboard, citing quarantine regulations, but TRICKSTER overrides HERO's lock and lets them in. The crew is unable to remove TRICKSTER from LOVER's face, as TRICKSTER's grip is strong and its blood is an extremely corrosive acid. Eventually TRICKSTER lets go, crawls away, and dies."
 },
 {plot_id: 3, #the matrix
  order: 2,
  text: "MENTOR explains that, in the 21st century, humans waged a war against intelligent machines. When humans blocked the machines' access to solar energy, the machines began to harvest the humans' bioelectricity for power. The world is a shared simulation of the world as it was in 1999, in which the minds of the harvested humans are trapped and pacified. MENTOR belongs to a group of rebels who hack into the simulation and unplug enslaved humans. The rebels' understanding of the true nature of the simulation allows them to bend its physical laws. HERO is warned that fatal injuries within the simulation will also kill one's physical body, and that the TRICKSTERs are powerful sentient programs that eliminate threats to the system."
 },
 {plot_id: 4, #star wars
  order: 2,
  text: "The droids are captured by traders, who sell the pair to moisture farmers and their nephew, HERO. While cleaning TRICKSTER, HERO accidentally triggers LOVER's message, requesting help from MENTOR. The next morning, HERO finds TRICKSTER searching in the desert for MENTOR, an old hermit. MENTOR tells HERO of his days as member of a faction of galactic peacekeepers with supernatural powers. HERO learns that his father fought alongside MENTOR before he was betrayed and killed by SHADOW, MENTOR's former pupil who turned to the dark side. MENTOR then offers HERO his father's lightsaber. "

 },
 {plot_id: 5, #E.T.
  order: 2,
  text: "At school the next day, FRIEND begins to experience a psychic connection with HERO, including exhibiting signs of intoxication due to HERO drinking beer, and FRIEND frees all the frogs in his biology class. As HERO watches John Wayne kiss Maureen O'Hara in The Quiet Man, FRIEND kisses TRICKSTER, a girl he likes, but he goes too far and has to go to the principal's office."
 },
 {plot_id: 6, #the terminator
  order: 2,
  text: "HERO and SHADOW converge on FRIEND in a shopping mall. A chase ensues. FRIEND and HERO escape together on a motorcycle. Fearing that SHADOW will kill MENTOR, FRIEND orders HERO to help free MENTOR. They encounter MENTOR as she's escaping from the hospital, although she's reluctant to trust HERO. After the trio escapes from SHADOW in a police car, HERO informs FRIEND and MENTOR about the artificial intelligence that will initiate a nuclear holocaust. MENTOR learns that the person most directly responsible is TRICKSTER, an engineer working on a revolutionary new neural net."
 },
 {plot_id: 7, #die hard
  order: 2,
  text: "Away from the hostages, SHADOW interrogates TRICKSTER for the code to the building's vault. TRICKSTER refuses to cooperate and is executed. HERO, who was secretly watching, is pursued by TRICKSTER. HERO kills TRICKSTER, taking his weapon and radio. HERO contacts the police. FRIEND is sent to investigate. SHADOW sends Ogre and TRICKSTER to stop HERO, who kills them both. FRIEND is greeted by MENTOR, who poses as a receptionist. As FRIEND leaves, HERO drops TRICKSTER's corpse onto his car. FRIEND summons the police, who surround the building. HERO takes Ogre's bag containing C-4 explosives and detonators. "

 },

 {plot_id: 8, #thelma and louise
  order: 2,
  text: "HERO is determined to travel to Mexico. Heading west, they come across an attractive young man named TRICKSTER, and FRIEND convinces HERO to let him hitch a ride. HERO contacts LOVER and asks him to wire transfer her life savings to her. When she goes to pick up the money, she finds that LOVER has come to see her to deliver the money in person. FRIEND invites TRICKSTER into her room and learns that he is a thief who's broken parole. They sleep together, and TRICKSTER describes how he conducted his hold-ups. Meanwhile, LOVER proposes to HERO, but HERO declines. "
 },

 {plot_id: 9, #home alone
  order: 2,
  text: "Meanwhile, HERO wakes up to find the house empty. Believing hero_his/her wish came true, HERO is overjoyed with freedom. However, HERO's joy turns to fear as hero_he/she encounters hero_his/her neighbor, MENTOR, who is rumored to have murdered mentor_his/her family with a shovel. HERO also encounters SHADOW and TRICKSTER, a pair of burglars who have targeted HERO's house. HERO is initially able to keep them away by making the house appear as if hero_his/her family is at home, but the crooks eventually realize that HERO is home alone."
 },

 {plot_id: 10, #beauty and the beast
  order: 2,
  text: "MENTOR and his horse TRICKSTER get lost in the forest while traveling to a fair to present his wood-chopping machine. After being chased by a pack of wolves, he comes across LOVER's castle. Inside, he meets FRIEND the candlestick, TRICKSTER the clock, and TRICKSTER the teacup. However, LOVER quickly discovers and detains MENTOR. After TRICKSTER leads HERO to LOVER's castle, she offers to take her father's place. Over her father's objections, LOVER accepts HERO's offer. While SHADOW sulks over HERO's rejection, MENTOR returns to town but is unable to convince the others to save HERO from LOVER."
 },
 {plot_id: 11, #italian movie
  order: 2,
  text: "Finally, HERO rebels and leaves, making her way into town. There she watches the act of another street entertainer, LOVER, a talented high wire artist and clown. When SHADOW finds HERO there, he forcibly takes her back. They join a ragtag travelling circus where LOVER already works. LOVER teases SHADOW at every opportunity. After LOVER drenches SHADOW with a pail of water, SHADOW chases after his tormentor with his knife drawn. As a result, SHADOW is briefly jailed. Eventually, TRICKSTER fires both SHADOW and LOVER from the travelling circus."
 },
 {plot_id: 12, #the piano
  order: 2,
  text: "They give LOVER a note, but LOVER can't read. They spend the day on the beach. HERO plays the piano. LOVER suggests that SHADOW trade the piano for land. SHADOW agrees to LOVER's request to receive lessons from HERO, oblivious to LOVER's attraction. HERO doesn't want an illiterate with filthy hands touching her piano, but SHADOW demands she go. When HERO arrives at LOVER's hut, she is stunned to find that LOVER has perfectly tuned the piano. LOVER proposes that HERO earn the piano back at one piano key per 'lesson,' provided he can watch and do what he wants while she plays. She agrees."
 },
 ])

 paragraphs_order_3 = Paragraph.create([
  {plot_id: 1, #halloween
  order: 3,
  text: "That night, HERO babysits, while FRIEND babysits across the street. When FRIEND gets a call from friend_his/her boyfriend asking friend_him/her to pick him up, friend_he/she drops LOVER off at the house. FRIEND gets in friend_his/her car. SHADOW, who was hiding in the backseat, strangles friend_him/her before slitting friend_his/her throat. While playing hide-and-seek, the kid spots SHADOW carrying FRIEND's corpse and tries to tell HERO, who says hero_he/she doesn't believe in any 'bogeyman'."
  },
  {plot_id: 2, #alien
  order: 3,
  text: "The spaceship lifts off. LOVER awakens and seems healthy, but during dinner, LOVER chokes and convulses in pain before a small alien creature bursts from his chest. SHADOW escapes into the depths of the ship. The crew attempts to locate and capture SHADOW with motion trackers, nets, electric prods, and flamethrowers. SHADOW, now fully-grown, attacks TRICKSTER and disappears into the airshafts. After a heated debate, the group devises a plan to jettison SHADOW from the ship. MENTOR enters the spaceship's labyrinthine ventilation shafts, intending to force SHADOW into an airlock. SHADOW ambushes MENTOR. FRIEND, realizing SHADOW is killing the crew one by one, implores the others to escape in the ship's shuttle."
  },
  {plot_id: 3, #the matrix
  order: 3,
  text: "The group enters the simulation to visit FRIEND, a prophet. FRIEND implies that HERO is not the One, and warns that HERO will soon have to choose between his life and MENTOR's. Before the group can leave, they get ambushed by SHADOW. MENTOR allows himself to be captured so that HERO and the crew can escape. However, their getaway is hindered by TRICKSTER, who betrays MENTOR to SHADOW in exchange for a blissful, comfortable life. TRICKSTER disconnects and murders several crew members as they lie defenseless in the real world, before TRICKSTER is killed by LOVER."
  },
  {plot_id: 4, #star wars
  order: 3,
  text: "MENTOR views LOVER's complete message, in which she begs him to take the Death Star plans to her home planet. MENTOR invites HERO to accompany him to Alderaan and become a student of the Force. HERO initially declines, but, after discovering that Imperial stormtroopers searching for TRICKSTER have destroyed his home and killed his aunt and uncle, HERO changes his mind. MENTOR and HERO visit the cantina where they hire smuggler FRIEND and his Wookiee first mate TRICKSTER to transport them to Alderaan on their ship, the Millennium Falcon."
  },
  {plot_id: 5, #E.T.
  order: 3,
  text: "HERO learns to speak English by repeating what LOVER says as she watches Sesame Street. HERO reads a comic strip where Buck Rogers, stranded, calls for help by building a makeshift communication device. Inspired, HERO gets FRIEND's help in building a device to 'phone home' by using a toy. MENTOR notices that HERO's health is declining and that FRIEND is referring to himself as we."
  },
  {plot_id: 6, #Terminator
  order: 3,
  text: "MENTOR gathers weapons and plans to flee with FRIEND to Mexico, but after having a nightmare, instead sets out to kill TRICKSTER. Finding TRICKSTER at home, she wounds him but is unable to kill him. FRIEND and HERO arrive and learn that TRICKSTER's research has been reverse engineered from the damaged CPU and the right arm of the previous SHADOW. They break into the lab and retrieve the CPU and the arm. The police arrive and TRICKSTER is shot. TRICKSTER manages to trigger several explosives, destroying the lab. SHADOW relentlessly pursues the surviving trio, eventually cornering them in a steel mill."
  },
  {plot_id: 7, #die hard
  order: 3,
  text: "A SWAT team assaults the building, but the bad guys massacre them with rockets. HERO uses C-4 to blow up the floor occupied by the bad guys. LOVER's coworker attempts to mediate between SHADOW and HERO for the return of the detonators. HERO refuses, so SHADOW murders the guy. While HERO checks the explosives attached to the roof, SHADOW poses as an escaped hostage. HERO SHADOW gives SHADOW a gun. SHADOW tries to shoot HERO but finds the gun is unloaded. TRICKSTER arrives with some bad guys. HERO kills the bad guys, then flees, leaving the detonators behind."
  },
  {plot_id: 8, #thelma and louise
  order: 3,
  text: "In the morning, FRIEND tells HERO about her night with TRICKSTER. When they return to the motel room, they discover TRICKSTER has taken HERO's life savings and fled. HERO is distraught, so FRIEND takes charge and robs a convenience store using the tactics she learned from TRICKSTER. Meanwhile, the FBI get closer to catching the fugitives. Detective MENTOR discovers the traumatic event that HERO experienced years earlier in Texas. During a couple of brief phone conversations, MENTOR expresses sympathy for HERO's predicament and pledges to protect her, but MENTOR is unsuccessful in persuading HERO to surrender."
  },
  {plot_id: 9, #home alone
  order: 3,
  text: "HERO overhears SHADOW and TRICKSTER discussing plans for breaking into hero_his/her house that night. HERO goes to church and meets MENTOR, who sits with HERO. They briefly speak. HERO learns that MENTOR is actually a nice person and that the rumors about mentor_him/her are false. MENTOR tells HERO mentor_he/she is watching the choir because mentor_his/her granddaughter is in it, but mentor_he/she never gets to see her because mentor_he/she and mentor_his/her son are estranged. HERO suggests MENTOR try to reconcile.",
  },
  {plot_id: 10, #beauty and the beast
  order: 3,
  text: "That night, LOVER sulks after HERO refuses to have dinner with him. While FRIEND and TRICKSTER give her a tour of the castle, HERO wanders into the forbidden West Wing. LOVER inadvertently chases her into the forest by frightening her in frustration, where HERO encounters a pack of wolves. LOVER is injured while fending them off. HERO thanks him for saving her life. LOVER begins to develop feelings for HERO while she nurses his wounds. While the two begin to bond, SHADOW pays TRICKSTER to send MENTOR to the insane asylum if HERO refuses SHADOW's proposal again."
  },
  {plot_id: 11, #italian movie
  order: 3,
  text: "After SHADOW's release from the prison, LOVER proposes to HERO that there are alternatives to HERO's servitude, and imparts his philosophy that everything and everyone has a purpose: even a pebble, even her. MENTOR, a nun, suggests that HERO's purpose in life is comparable to her own. Yet when HERO offers SHADOW marriage, SHADOW brushes her off."
  },
  {plot_id: 12, #the piano
  order: 3,
  text: "The lessons with LOVER become a slow seduction for HERO's affection. LOVER requests gradually increased intimacy in exchange for more keys. HERO reluctantly accepts. Realizing HERO only wants the piano, LOVER gives up and simply returns it, saying their arrangement 'is making you a whore, and me wretched.' Despite having her piano back, HERO finds herself missing LOVER. HERO returns to LOVER one afternoon, where they submit to their desire for one another. SHADOW hears them making love as he walks by LOVER's house, and watches them through a crack in the wall. Outraged, he follows HERO the next day in the forest, and forces himself upon her. SHADOW then imprisons HERO while he works on his timberland. SHADOW lets HERO out after making her promise not to see LOVER again."
  },
  ])


  paragraphs_order_4 = Paragraph.create([
  {plot_id: 1, #halloween
  order: 4,
  text: "Feeling unsettled, HERO puts the kids to bed and goes across the street, where hero_he/she discovers the corpses of FRIEND and friend_his/her boyfriend. HERO is suddenly attacked by SHADOW. HERO falls down the staircase, but quickly recovers. Fleeing, hero_he/she screams for help, to no avail. Running back to the house, hero_he/she realizes hero_he/she lost the keys. SHADOW approaches. HERO panics and screams. Luckily, the kids open the door in time. HERO instructs the kids to hide. The phone line is dead. As hero_he/she sits down in horror next to the couch, SHADOW appears and tries to stab hero_him/her, but hero_he/she stabs shadow_him/her in the side of shadow_his/her neck with a knitting needle and shadow_he/she collapses."
  },

  {plot_id: 2, #alien
  order: 4,
  text: "HERO discovers that TRICKSTER has secretly been ordered to return SHADOW to the crew's employers, who consider the crew expendable. When HERO confronts TRICKSTER, he tries to choke her to death. FRIEND intervenes and knocks off TRICKSTER's head, revealing him to be an android. MENTOR reanimates TRICKSTER's head, and HERO interrogates him. They learn he was assigned to the spaceship to convince the crew to capture SHADOW and return it for analysis, even at the expense of the human personnel. TRICKSTER taunts them about their chances of survival against SHADOW. FRIEND kills TRICKSTER with a flamethrower."
  },
  {plot_id: 3, #the matrix
  order: 4,
  text: "The TRICKSTERs interrogate MENTOR in an attempt to learn his access codes to the mainframe computer in the city of Zion, the rebel humans' last refuge in the real world. Concerned that the TRICKSTERs might succeed in extracting the codes, FRIEND decides that MENTOR must be killed. Believing that he is not the One, HERO stops FRIEND and proposes returning to the simulation to rescue MENTOR. LOVER insists she accompany HERO. They succeed in rescuing MENTOR, and HERO gains confidence in his abilities. MENTOR and LOVER exit the simulation, but SHADOW ambushes and kills HERO before he can leave."
  },
  {plot_id: 4, #star wars
  order: 4,
  text: "Arriving at their destination, they find only debris. TRICKSTER destroyed the planet to demonstrate the Death Star's power. The spaceship is captured by the Death Star's tractor beam and brought aboard. While MENTOR attempts to disable the tractor beam, TRICKSTER discovers that LOVER is imprisoned in the Death Star. With the help of FRIEND and TRICKSTER, HERO rescues LOVER. After several harrowing escapes, the group makes its way back to the spaceship. MENTOR engages in a lightsaber duel with SHADOW and is killed. The group escapes from the Death Star."
  },
  {plot_id: 5, #E.T.
  order: 4,
  text: "MENTOR and FRIEND dress HERO as a ghost to sneak him out of the house. FRIEND and HERO ride FRIEND's bike to the forest, where HERO phones home. The next morning, FRIEND wakes up in the field, only to find HERO gone. MENTOR searches for HERO and finds him dying in a ditch. MENTOR takes HERO home to FRIEND, who is also dying. Government agents, lead by SHADOW, invade the house. Scientists quarantine FRIEND and HERO. HERO appears to die while FRIEND recovers. A grief-stricken FRIEND is left alone with the motionless HERO. FRIEND notices a dead chrysanthemum coming back to life. HERO reanimates and says that his people are returning."
  },
  {plot_id: 6, #terminator
  order: 4,
  text: "SHADOW and HERO engage in physical combat, with the advanced model SHADOW severely damaging the old school HERO. HERO is seemingly shut down until his emergency back-up system brings him back online. SHADOW almost kills MENTOR, but HERO shoots SHADOW into a vat of molten metal with a grenade launcher. FRIEND tosses the arm and CPU of the original SHADOW into the vat as well."
  },
  {plot_id: 7, #die hard
  order: 4,
  text: "FBI agents order the building's power be shut off. As SHADOW had anticipated, the loss of power disables the vault's final lock. SHADOW demands that a helicopter arrive on the roof for transport. TRICKSTER and HERO fight. HERO kills TRICKSTER and heads to the roof. HERO sends the hostages back downstairs before the explosives detonate, destroying the helicopter. A weary HERO finds LOVER with SHADOW and his remaining goons. HERO surrenders his machine gun to spare LOVER, but then distracts SHADOW and MENTOR by laughing, allowing him to grab a concealed handgun taped to his back. HERO shoots SHADOW then kills MENTOR with his final shot. SHADOW crashes through a window, momentarily saving himself by grabbing LOVER's watch. HERO releases it and SHADOW falls to his death."
  },
  {plot_id: 8, #thelma and louise
  order: 4,
  text: "When they are pulled over by a state trooper named TRICKSTER, FRIEND holds TRICKSTER at gunpoint and locks him in the trunk of his car, while HERO takes his gun and ammunition. They then encounter a truck driver, TRICKSTER, who repeatedly makes obscene gestures at them. They demand an apology, but when TRICKSTER refuses, they fire at the fuel-tanker he is driving. The fuel-tanker explodes. FRIEND and HERO drive off, leaving TRICKSTER furious."
  },
  {plot_id: 9, #home alone
  order: 4,
  text: "HERO returns home and rigs hero_his/her house with numerous booby traps. SHADOW and TRICKSTER break in, springing the traps and suffering various injuries. While the duo chases HERO around the house, hero_he/she calls the police and escapes the house, luring the duo into a neighboring vacant home. SHADOW and TRICKSTER manage to catch hero_him/her and discuss how they will get their revenge, but MENTOR sneaks in and knocks them unconscious with mentor_his/her snow shovel before they can do anything to HERO. The police arrive and arrest SHADOW and TRICKSTER.",
  },

  {plot_id: 10, #beauty and the beast
  order: 4,
  text: "While sharing a romantic evening together, HERO tells LOVER she misses her father. He lets her use his magic mirror to see him. She sees MENTOR dying in the woods trying to rescue her. LOVER lets her go out to save him and he gives her the mirror to remember him by. She finds MENTOR and brings him home. As SHADOW is about to bring MENTOR to the insane asylum, HERO proves MENTOR's sanity by showing LOVER with the magic mirror. Realizing HERO loves LOVER, SHADOW convinces the villagers that LOVER is a man-eating monster and leads them to the castle to kill him."
  },
  {plot_id: 11, #italian movie
  order: 4,
  text: "The separate paths of LOVER and SHADOW cross for the last time on an empty stretch of road, when SHADOW comes upon LOVER fixing a flat tire. As HERO watches in horror, SHADOW strikes LOVER on the head several times. LOVER complains that his watch is broken, then collapses and dies. SHADOW hides the body and pushes the car off the road, where it bursts into flames. The killing breaks HERO's spirit. After ten days, her affect remains flat, and her eyes lifeless. Finally SHADOW abandons her while she is taking a nap, leaving some clothes, money, and a trumpet."
  },
  {plot_id: 12, #the piano
  order: 4,
  text: "HERO sends FRIEND with a package for LOVER, containing a single piano key inscribed with the words: 'Dear LOVER, you have my heart. HERO'. FRIEND brings the piano key instead to SHADOW. After reading the love note burnt onto the piano key, SHADOW returns home with an axe and cuts off HERO's index finger. He then sends FRIEND to LOVER with the severed finger wrapped in cloth, with the message that if LOVER ever attempts to see HERO again, he will chop off more fingers. Later that night, SHADOW has a nightmare. Shaken, SHADOW sends HERO and FRIEND away with LOVER. While being rowed to TRICKSTER's ship, HERO asks LOVER to throw the piano overboard."
  },
  ])


  paragraphs_order_5 = Paragraph.create([

  {plot_id: 1, #halloween
  order: 5,
  text: "HERO goes upstairs telling the kids hero_he/she killed the 'bogeyman', but SHADOW reappears in pursuit of hero_him/her. Telling the kids to hide and lock themselves in the bathroom, HERO opens the French windows to feign escape and hides in a bedroom closet. SHADOW punches a hole in the closet door to get to hero_him/her. HERO frantically undoes a metal clothes hanger to stick SHADOW in the eye. SHADOW collapses. HERO tells the kids to go find help. SHADOW gets up and tries to strangle HERO, but MENTOR arrives in time to save hero_him/her. MENTOR shoots SHADOW, who falls from the second-story window. SHADOW is nowhere to be found when MENTOR looks outside."
  },

  {plot_id: 2, #alien
  order: 5,
  text: "The survivors, HERO, FRIEND and TRICKSTER, agree to set the spaceship to self-destruct and escape in the shuttle. However, SHADOW ambushes and kills TRICKSTER and FRIEND while they gather supplies. HERO initiates the self-destruct sequence and heads for the shuttle with TRICKSTER, but SHADOW blocks her path. HERO retreats, then returns to retrieve TRICKSTER, finding SHADOW gone. HERO narrowly escapes in the shuttle as the spaceship explodes. While preparing to enter stasis, HERO discovers SHADOW is aboard the shuttle. HERO dons a spacesuit and opens the shuttle's airlock, causing explosive decompression, which forces SHADOW into the shuttle's open doorway. HERO tries to shoot SHADOW into space with a grappling hook, but the gun catches in the closing door, tethering SHADOW to the shuttle. HERO activates the engines, blasting SHADOW into space."
  },

  {plot_id: 3, #the matrix
  order: 5,
  text: "Meanwhile, sentinel machines attack the hovercraft, while LOVER whispers to HERO that TRICKSTER told her she would fall in love with the One. She kisses HERO, and HERO revives with the power to perceive and control the simulation. He effortlessly destroys SHADOW and leaves the simulation in time for the ship's electromagnetic pulse weapon to disable the attacking sentinels. Later, HERO makes a telephone call, promising the machine masters that he will show their prisoners 'a world where anything is possible'. HERO hangs up and flies into the sky."
  },

  {plot_id: 4, #star wars
  order: 5,
  text: "HERO joins the rebel assault squadron, while FRIEND collects his payment for the transport and intends to leave despite HERO's request that he stay and help. In the subsequent battle, the rebels suffer heavy losses after several unsuccessful attack runs, leaving HERO as one of the few surviving pilots. SHADOW leads a squad of TIE fighters and prepares to attack HERO's X-wing ship, but FRIEND returns and fires on the Imperials, sending SHADOW spiraling away. Helped by spiritual advice from MENTOR instructing him to use the Force, HERO successfully destroys the Death Star, killing TRICKSTER seconds before he can fire on the rebel base. Later, in the palace, LOVER awards HERO and FRIEND medals for their heroism."
  },

  {plot_id: 5, #E.T.
  order: 5,
  text: "FRIEND and MENTOR steal a van that HERO had been loaded into and a chase ensues, with MENTOR's friends joining them as they attempt to evade the authorities by bike. Suddenly facing a police roadblock, HERO uses telekinesis to lift them into the air and toward the forest. Standing near the spaceship, HERO's heart glows as he prepares to return home. TRICKSTER, LOVER, and SHADOW arrive. HERO says goodbye to MENTOR and LOVER, as she presents him with the chrysanthemum that he revived. Before boarding the spaceship, he tells FRIEND 'I'll be right here,' pointing his glowing finger to his forehead. He then picks up the chrysanthemum and gets on the spaceship. The ship takes off, leaving a rainbow in the sky as everyone watches it leave."
  },

  {plot_id: 6, #terminator
  order: 5,
  text: "As MENTOR expresses relief that the ordeal is over, HERO explains that in order to ensure that he is not used for reverse engineering, he must also be destroyed. HERO asks MENTOR to assist in lowering him into the vat of metal, since HERO is unable to self-terminate. FRIEND begs HERO to reconsider his decision. HERO bids them farewell as he is lowered into the vat. HERO gives a tearful FRIEND a final thumbs-up as HERO disappears into the molten steel. MENTOR looks to the future with hope, musing that 'if a machine can learn the value of human life, maybe we can too.'"
  },

  {plot_id: 7, #die hard
  order: 5,
  text: "HERO and LOVER are escorted from the building and meet FRIEND in person. TRICKSTER emerges from the building disguised as a hostage and attempts to shoot HERO, but FRIEND guns him down. TRICKSTER crashes through the parking garage door in the limo. TRICKSTER arrives and attempts to interview HERO, but is punched by LOVER. HERO and LOVER are driven away by TRICKSTER."
  },

  {plot_id: 8, #thelma and louise
  order: 5,
  text: "The authorities finally corner FRIEND and HERO only 100 yards from the edge of the Grand Canyon. MENTOR arrives, but he is refused the chance to make one last attempt to talk the duo into surrendering themselves. Rather than be captured and spend the rest of their lives in jail, FRIEND proposes that they 'keep going' over the cliff. HERO asks FRIEND if she's certain. FRIEND says yes. They kiss, and HERO steps on the accelerator. As soon as the car starts forward, MENTOR sprints after it in an attempt to save them, but the car zooms over the edge of the cliff." },

  {plot_id: 9, #home alone
  order: 5,
  text: "On Christmas Day, HERO is disappointed to find that hero_his/her family is still gone. HERO then hears LOVER enter the house and call for hero_him/her. They reconcile and are soon joined by the rest of HERO's family. HERO keeps silent about hero_his/her encounter with SHADOW and TRICKSTER, although FRIEND finds SHADOW's missing gold tooth. Across the street, MENTOR notices HERO and the pair acknowledge each other before MENTOR and mentor_his/her family go home."
  },

  {plot_id: 10, #beauty and the beast
  order: 5,
  text: "Having stowed away in HERO's baggage, FRIEND helps MENTOR and HERO escape into the castle. SHADOW fights LOVER while FRIEND fends off the villagers. LOVER is initially too depressed to fight back, though perks up after seeing HERO return to the castle. LOVER battles and defeats SHADOW on the rooftops, though spares his life by ordering him to leave. SHADOW mortally wounds LOVER, but loses his balance and dies after falling from the rooftops. HERO professes her love for LOVER, who dies before the last rose petal falls. With TRICKSTER's spell broken, LOVER is revived and transformed into his human form, and his servants also resume their human forms with the castle restored to its former glory. HERO dances with LOVER in the ballroom as everyone watches in delight."
  },

  {plot_id: 11, #italian movie
  order: 5,
  text: "Some years later, SHADOW overhears a woman, TRICKSTER, singing a tune HERO often played. He learns that TRICKSTER's father had found HERO on the beach and kindly taken her in. However, HERO had wasted away and died. SHADOW gets drunk and wanders to the beach, where he breaks down in tears."
  },

  {plot_id: 12, #the piano
  order: 5,
  text: "In their new home, HERO lives happily with LOVER and FRIEND, where she has started to give piano lessons. Her severed finger has been replaced with a silver finger made by LOVER. HERO has also started to take speech lessons in order to learn how to speak again. HERO says that she imagines her piano in its grave in the sea, and herself suspended above it, which lulls her to sleep."
  },

  ])
