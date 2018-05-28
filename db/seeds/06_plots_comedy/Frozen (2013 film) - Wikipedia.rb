#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    "genre_id": 6,
    "title": "Frozen (2013 film) - Wikipedia.rb",
    "author": "null"
  }
])

#select array within Paragraph.create(), then click: Packages > Pretty JSON > Prettify
paragraphs = Paragraph.create([
  {
    "plot_id": "#{plot.first.id}",
    "order": 1,
    "text": "Princess Elsa of Arendelle possesses cryokinetic magic, often using it to play with her younger sister, Anna. After Elsa accidentally injures Anna with her magic, their parents, the King and Queen, take both siblings to a colony of trolls led by Grand Pabbie. He heals Anna, but alters her memories to remove traces of Elsa’s magic, warning Elsa that she must learn to control her powers. The King and Queen isolate both sisters within the castle. Elsa shuts out Anna, causing a rift between them. Elsa suppresses her magic rather than mastering it, causing her to become more insecure. When the sisters are teenagers, their parents die at sea during a storm."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "When Elsa turns twenty-one, she is to be crowned queen of Arendelle. She is terrified that the kingdom's citizens might find out about her powers and fear for her. The castle gates open to the public and visiting dignitaries for the first time in years. Among them is the scheming Duke of Weselton, and the dashing Prince Hans of the Southern Isles, with whom Anna falls in love at first sight. Elsa’s coronation happens without a hitch, but she still remains distant from Anna. When Hans proposes to Anna, Elsa objects, accidentally unleashing her powers before the court. The Duke brands her a monster. Elsa flees to the North Mountain, where she throws out her crown, and builds a palace of ice, in which to live a hermit life. In the process, however, her suppressed magic engulfs Arendelle in an eternal winter."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "Anna ventures out to find Elsa and end the winter, leaving Hans in command. She gets lost, collecting supplies at Wandering Oaken's shop. She meets an ice harvester named Kristoff, and his reindeer, Sven, convincing them to take her to the mountains. An attack by wolves leads to Kristoff’s sleigh being destroyed. On foot, they meet Olaf, a cheerful snowman brought to life unknowingly by Elsa, who offers to lead them to her. When Anna’s horse returns to Arendelle, Hans sets out to find Anna and Elsa, accompanied by the Duke's minions, who have secret orders to capture Elsa."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "Reaching the ice palace, Anna meets Elsa, but when she reveals what has become of Arendelle, Elsa becomes upset, saying that she cannot undo it, and accidentally freezes Anna's heart. She then makes a giant snow monster named Marshmallow, who chases Anna, Kristoff, and Olaf away. Anna's hair begins turning white, so Kristoff takes her to meet the trolls, his adoptive family. Grand Pabbie reveals that Anna will freeze solid unless \"an act of true love\" reverses the spell. Kristoff races Anna back home so Hans can give her true love's kiss. Hans and his men reach Elsa's palace, defeating Marshmallow, and capturing Elsa. Anna is delivered to Hans, but rather than kissing her, Hans instead reveals that he has actually been plotting to seize the throne of Arendelle by eliminating both sisters. Hans locks Anna in a room to die, and manipulates the dignitaries into believing that Elsa killed her. He orders the queen's execution, only to discover she has escaped her detention cell."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "Olaf frees Anna, and they venture into the blizzard outside to meet Kristoff, whom Olaf reveals is in love with her. Hans confronts Elsa outside, claiming that she killed Anna, causing Elsa to break down. Anna spots Hans about to kill Elsa; she leaps in the way and freezes solid, stopping Hans. Devastated, Elsa hugs and mourns over her sister, who thaws out, her heroism constituting \"an act of true love\". Realizing that her magic is controlled by love, Elsa ends the winter before giving Olaf his own snow flurry to survive the warmer climate. Both Hans and the Duke are arrested, and removed from the kingdom. Anna and Kristoff become a couple, while both sisters are reunited, with Elsa promising never to lock the castle gates again."
  }
])