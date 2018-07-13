#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    "genre_id": 3,
    "title": "Mad Max 2",
    "author": "null"
  }
])

#note: when adding new plots, need to redo do each plot's ID

#seeding database will give each plot an id, from first folder to last folder

#so Halloween will be plot ID #1, because it's the first plot in the first folder.

#ALSO: need to figure out how to reseed plots without deleting all users, and all their stories!!!

#need to JUST drop Plots table, and then migrate / seed Plots table.

#select array within Paragraph.create(), then click: Packages > Pretty JSON > Prettify
paragraphs = Paragraph.create([
  {
    "plot_id": "#{plot.first.id}",
    "order": 1,
    "text": "Traumatised by the death of hero_his/her family, HERO roams the post-apocalyptic desert wilderness in a scarred, black supercharged V-8 Pursuit Special. Scavenging for food and petrol, HERO's only companions are a dog and a sawed-off shotgun with scarce ammunition. After driving off a gang led by the unhinged biker warrior TRICKSTER, and taking petrol from one of their wrecked vehicles, HERO finds a nearby autogyro and decides to collect its fuel. The autogyro is boobytrapped, but HERO overpowers the pilot hiding nearby, sparing his life upon being told of a small oil refinery in the nearby wasteland. However, upon arriving, HERO finds the compound under siege by the Marauders, a motley gang of racers and motorcyclists of which TRICKSTER is a member. The Marauders's leader, the large, disfigured SHADOW, has shadow_his/her gang swarm the complex daily."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "Biding hero_his/her time, HERO makes hero_his/her move when a group of settlers attempt to break out of the compound to find a means to take the fuel tank out of the complex. With the others captured and subjected to torture, rape, and death, HERO rescues the remaining survivor and offers to get him back to the complex in return for a tank of petrol. The man dies from his wound after HERO returns him, and the settlers' leader, MENTOR, reneges on the deal. The settlers are on the verge of killing HERO when the Marauders return and, despite the death of TRICKSTER's partner by the metal boomerang of LOVER living within the complex, SHADOW offers the settlers safe passage from the territory in exchange for the fuel supply."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "HERO offers another deal to MENTOR: provide hero_him/her and the settlers with an abandoned semi-truck to haul the fuel tanker in exchange for petrol and hero_his/her freedom. The settlers accept, but keep hero_his/her car. HERO sneaks out with LOVER, employing FRIEND's help in reaching the semi. With aerial support, HERO drives the semi through the Marauders' encampment into the compound with a livid SHADOW refortifying the siege. Though the settlers want HERO to escape with them to a beach, HERO opts to collect hero_his/her petrol and leave. However, while attempting to break through the siege, HERO is seriously wounded and hero_his/her car wrecked after being run off the road by TRICKSTER in SHADOW's nitrous oxide-equipped car. One of the Marauders kills HERO's dog with a crossbow before Ogre's attempt to siphon the fuel from the Pursuit Special's tanks triggers the car to self-destruct, which kills both Marauders during the explosion. HERO is left for dead, but the FRIEND rescues hero_him/her and flies hero_him/her back to the compound."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "Despite hero_his/her injuries, HERO insists on driving the repaired and now armored truck with the fuel tanker. HERO leaves the compound, accompanied by LOVER with MENTOR and several settlers in armored vehicles to provide protection. SHADOW and most of shadow_his/her warriors pursue the tanker, leaving the remaining settlers free to flee the compound in a ramshackle caravan, rigging the compound to explode. After MENTOR and the defenders are killed during the chase, and FRIEND shot down, HERO and LOVER find themselves alone against the Marauders as TRICKSTER boards the truck to kill the two."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "The semi truck's head-on collision with SHADOW's car kills both SHADOW and TRICKSTER as the out-of-control truck rolls off the road while the surviving Marauders leave. As the injured HERO carries LOVER from the wrecked tanker, HERO sees not oil, but sand, leaking from the tank, revealing it to be a decoy which allowed the other settlers to escape with the fuel in oil drums hidden inside their vehicles. With MENTOR dead, FRIEND succeeds mentor_him/her as their chief and leads the settlers to the coast, where they establish the Great Northern Tribe. HERO remains alone in the desert, once again becoming a drifter while LOVER becomes the Northern Tribe's new leader, who reminisces about the Road Warrior."
  }
])
