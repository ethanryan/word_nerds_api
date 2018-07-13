#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    "genre_id": 6, #comedy
    "title": "Frozen",
    "author": "null"
  }
])

#select array within Paragraph.create(), then click: Packages > Pretty JSON > Prettify
paragraphs = Paragraph.create([
  {
    "plot_id": "#{plot.first.id}",
    "order": 1,
    "text": "Princess TRICKSTER possesses cryokinetic magic, often using it to play with her younger sister, HERO. After TRICKSTER accidentally injures HERO with trickster_his/her magic, their parents, the King and Queen, take both siblings to a colony of trolls led by MENTOR. MENTOR heals HERO, but alters hero_his/her memories to remove traces of TRICKSTER’s magic, warning TRICKSTER that trickster_he/she must learn to control trickster_his/her powers. The King and Queen isolate both children within the castle. TRICKSTER shuts out HERO, causing a rift between them. TRICKSTER suppresses trickster_his/her magic rather than mastering it, causing trickster_him/her to become more insecure. When the sisters are teenagers, their parents die at sea during a storm."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "When TRICKSTER turns twenty-one, trickster_he/she is to be crowned queen. TRICKSTER is terrified that the kingdom's citizens might find out about trickster_his/her powers and fear for trickster_him/her. The castle gates open to the public and visiting dignitaries for the first time in years. Among them is the scheming Duke of Weselton, and the dashing Prince SHADOW of the Southern Isles, with whom HERO falls in love at first sight. TRICKSTER’s coronation happens without a hitch, but trickster_he/she still remains distant from HERO. When SHADOW proposes to HERO, TRICKSTER objects, accidentally unleashing trickster_his/her powers before the court. The Duke brands trickster_him/her a monster. TRICKSTER flees to the North Mountain, where trickster_he/she throws out trickster_his/her crown, and builds a palace of ice, in which to live a hermit life. In the process, however, trickster_his/her suppressed magic engulfs Arendelle in an eternal winter."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "HERO ventures out to find TRICKSTER and end the winter, leaving SHADOW in command. HERO gets lost, collecting supplies at Wandering Oaken's shop. HERO meets an ice harvester named LOVER, and lover_his/her reindeer, Sven, convincing them to take hero_him/her to the mountains. An attack by wolves leads to LOVER’s sleigh being destroyed. On foot, they meet FRIEND, a cheerful snowman brought to life unknowingly by TRICKSTER, who offers to lead them to trickster_him/her. When HERO’s horse returns to Arendelle, SHADOW sets out to find HERO and TRICKSTER, accompanied by the Duke's minions, who have secret orders to capture TRICKSTER."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "Reaching the ice palace, HERO meets TRICKSTER, but when HERO reveals what has become of Arendelle, TRICKSTER becomes upset, saying that trickster_he/she cannot undo it, and accidentally freezes HERO's heart. TRICKSTER then makes a giant snow monster named Marshmallow, who chases HERO, LOVER, and FRIEND away. HERO's hair begins turning white, so LOVER takes her to meet the trolls, lover_his/her adoptive family. MENTOR reveals that HERO will freeze solid unless \"an act of true love\" reverses the spell. LOVER races HERO back home so SHADOW can give hero_him/her true love's kiss. SHADOW and shadow_his/her goons reach TRICKSTER's palace, defeating Marshmallow, and capturing TRICKSTER. HERO is delivered to SHADOW, but rather than kissing hero_him/her, SHADOW instead reveals that shadow_he/she has actually been plotting to seize the throne by eliminating both siblings. SHADOW locks HERO in a room to die, and manipulates the dignitaries into believing that TRICKSTER killed hero_him/her. SHADOW orders the queen's execution, only to discover trickster_he/she has escaped trickster_his/ber detention cell."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "FRIEND frees HERO, and they venture into the blizzard outside to meet LOVER, whom FRIEND reveals is in love with hero_him/her. SHADOW confronts TRICKSTER outside, claiming that trickster_he/she killed HERO, causing TRICKSTER to break down. HERO spots SHADOW about to kill TRICKSTER. HERO leaps in the way and freezes solid, stopping SHADOW. Devastated, TRICKSTER hugs and mourns over HERO, who thaws out, hero_his/her heroism constituting \"an act of true love\". Realizing that trickster_his/her magic is controlled by love, TRICKSTER ends the winter before giving FRIEND friend_his/her own snow flurry to survive the warmer climate. Both SHADOW and the Duke are arrested, and removed from the kingdom. HERO and LOVER become a couple, while both siblings are reunited, with TRICKSTER promising never to lock the castle gates again."
  }
])
