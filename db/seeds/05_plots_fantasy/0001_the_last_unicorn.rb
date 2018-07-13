#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    "genre_id": 5, #fantasy
    "title": "The Last Unicorn",
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
    "text": "A group of hunters pass through a forest in search of game. After days of coming up empty-handed, they realize they are passing through a unicorn's forest, where animals are kept safe by a magical aura. Before they leave, one of the hunters calls out a warning to HERO that she may be the last of her kind. This revelation disturbs HERO, who discovers that humans no longer even recognize hero_him/her. Instead they see a pretty white mare. HERO encounters a talking butterfly who speaks in riddles and initially dodges hero_his/her questions about the other unicorns. Eventually, the butterfly issues a warning that hero_his/her kind have been herded to a far away land by a creature known as SHADOW. HERO continues to search for other unicorns. During hero_his/her journey, HERO is taken captive by a traveling carnival led by the witch Cleo, who uses magical spells to create the illusion that regular animals are in fact creatures of myth and legend. MENTOR, a magician traveling with the carnival, sees HERO for what hero_he/she is, and frees hero_him/her in the middle of the night. HERO frees the other creatures, who kill Cleo and her hunchbacked assistant."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "HERO and MENTOR continue traveling in an attempt to reach the castle of King TRICKSTER, where SHADOW resides. When MENTOR is captured by bandits, HERO comes to mentor_his/her rescue and attracts the attention of FRIEND, the bandit leader's lover. Together, the three continue their journey and arrive at Hagsgate. A resident of Hagsgate named Drinn informs them of a curse that stated that their town would continue to share in TRICKSTER's fortune until someone from Hagsgate brings TRICKSTER's castle down. Drinn goes on to claim that he discovered a baby in the town's marketplace one night in winter. He knew that the child was the one the prophecy spoke of, but he left the baby where he found it, not wanting the prophecy to come true. King TRICKSTER found the baby later that evening and adopted it."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "FRIEND, MENTOR, and HERO leave Hagsgate and continue toward TRICKSTER's castle, but on their way they are attacked by SHADOW. HERO runs, but is unable to escape. In an effort to help, MENTOR unwittingly turns HERO into a human woman. Confused by the change, SHADOW gives up the pursuit and disappears. HERO suffers tremendous shock at the sudden feeling of mortality in hero_his/her human body. MENTOR encourages HERO to continue hero_his/her quest. The three continue to TRICKSTER's castle, where MENTOR introduces HERO as Amalthea to throw off TRICKSTER's suspicions. They manage to convince TRICKSTER to allow them to serve in trickster_his/her court, with the hopes of gathering clues as to the location of the other unicorns. During their stay, Amalthea is romanced by TRICKSTER's adopted child, Prince LOVER. TRICKSTER eventually reveals to Amalthea that the unicorns are trapped in the sea for trickster_his/her own benefit, because the unicorns are the only things that make trickster_him/her happy. TRICKSTER then openly accuses Amalthea of coming to trickster_his/her kingdom to save the unicorns and says that trickster_he/she knows who HERO really is, but Amalthea has seemingly forgotten about her true nature and her desire to save the other unicorns."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "Following clues given to them by a cat, FRIEND, MENTOR, and Amalthea find the entrance to SHADOW's lair. TRICKSTER and his men-at-arms attempt to stop them, but they manage to enter the SHADOW's lair and are joined by LOVER. When SHADOW attacks them, MENTOR changes Amalthea back to hero_his/her original form. In an effort to save HERO, LOVER jumps into SHADOW's path and is trampled. Fueled by anger and sorrow, HERO drives SHADOW into the sea. The other unicorns are freed, and they run back to their homes, with TRICKSTER's castle falling in their wake. As the castle falls, its wreckage dissolves into mist before it even hits the ground."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "HERO revives LOVER with the healing touch of hero_his/her horn. Now king after TRICKSTER's death, LOVER attempts to follow HERO despite MENTOR advising against it. As they pass through the now-ruined town of Hagsgate, they learn that Drinn is actually LOVER's father, and that he had abandoned LOVER in the marketplace on purpose to fulfill the prophecy. Realizing that lover_he/she has new responsibilities as king after seeing the state of Hagsgate, LOVER returns to rebuild it after accompanying MENTOR and FRIEND to the outskirts of lover_his/her kingdom. HERO returns to hero_his/her forest. HERO tells MENTOR that hero_he/she is different from all the other unicorns now, because hero_he/she knows what it's like to feel love and regret."
  }
])
