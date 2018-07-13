#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    "genre_id": 6, #comedy
    "title": "Toy Story",
    "author": "null"
  }
])

#select array within Paragraph.create(), then click: Packages > Pretty JSON > Prettify
paragraphs = Paragraph.create([
  {
    "plot_id": "#{plot.first.id}",
    "order": 1,
    "text": "In a world where toys are living things who pretend to be lifeless when humans are present, a group of toys, owned by six-year-old LOVER, are caught off-guard when LOVER's birthday party is moved up a week, as LOVER, lover_his/her mother, and infant sister Molly, are preparing to move the following week. The toys' leader and LOVER's favorite toy, a pull-string cowboy doll named Sheriff HERO, organizes the other toys, including Bo Peep the shepherdess, MENTOR, Rex the Dinosaur, Hamm the Piggy Bank, and Slinky Dog, into a scouting mission. Green army men, led by Sarge, spy on the party, and report the results to the others via baby monitors. The toys are relieved when the party appears to end with none of them having been replaced, but then LOVER receives a surprise gift – an electronic toy space ranger action figure named TRICKSTER, who thinks trickster_he/she is an actual space ranger."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "TRICKSTER impresses the other toys with trickster_his/her various features, and LOVER begins to favor trickster_him/her, making HERO feel left out. As LOVER prepares for a family outing at Pizza Planet, lover_his/her mother allows lover_him/her to bring one toy. Fearing LOVER will choose TRICKSTER, HERO attempts to trap TRICKSTER behind a desk, but ends up accidentally knocking trickster_him/her out a window, and the other toys rebel against HERO by accusing hero_him/her of knocking TRICKSTER out of jealousy. Before they can exact revenge, LOVER takes HERO instead and leaves for Pizza Planet. When the family stops for gas, HERO finds that TRICKSTER has hitched a ride on the car as well, and fight, only to find the family has left without them. They manage to make their way to the restaurant by stowing away on a pizza delivery truck, where TRICKSTER, still thinking trickster_he/she is a real space ranger, despite HERO's attempts to convince trickster_him/her otherwise, gets them stuck in a crane game, where they are salvaged by LOVER's mischievous neighbor, SHADOW."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "HERO attempts to escape from SHADOW's house, but TRICKSTER, finally realizing trickster_he/she is a toy after watching a TRICKSTER TV ad, sinks into despondency. SHADOW plans to launch TRICKSTER on a firework rocket, but shadow_his/her plans are delayed by a thunderstorm. HERO tells TRICKSTER about the joy trickster_he/she can bring to LOVER as a toy, restoring trickster_his/her confidence. The next day, HERO and SHADOW's mutant toy creations rescue TRICKSTER just as SHADOW is about to launch the rocket and scare SHADOW into no longer abusing toys by coming to life in front of shadow_him/her, and trickster_he/she runs into trickster_his/her house screaming in horror. HERO and TRICKSTER then leave SHADOW's house just as LOVER and lover_his/her family drive away toward their new home."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "The duo tries to make it to the moving truck, but SHADOW's dog, Scud, sees them, and gives chase. TRICKSTER gets left behind while saving HERO from Scud, and HERO tries rescuing trickster_him/her with LOVER's car, FRIEND, but the other toys, thinking HERO eliminated FRIEND as well, attack and toss friend_him/her off the truck. Having evaded Scud, TRICKSTER and FRIEND retrieve HERO, and continue after the truck. Upon seeing HERO and TRICKSTER together on FRIEND, the other toys realize their mistake, and try to help them get back aboard, but FRIEND's batteries become depleted, stranding them. HERO ignites the rocket on TRICKSTER's back and manages to throw FRIEND into the truck before they soar into the air. TRICKSTER opens trickster_his/her wings to free trickster_him/herself from the rocket before it explodes, gliding with HERO to land safely into a box in the car, right next to LOVER."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "On Christmas Day, at their new house, HERO and TRICKSTER stage another reconnaissance mission to prepare for the new toy arrivals. As HERO jokingly asks what might be worse than TRICKSTER, they discover LOVER's new gift is a puppy, and the two share a worried smile."
  }
])
