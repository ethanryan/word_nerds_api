plot = Plot.create([
  { genre_id: 6, #comedy
    title: "Home Alone",
    author: "Chris Colombus"
  },
])

paragraphs = Paragraph.create([
  { plot_id: "#{plot.first.id}", #home alone
    order: 1,
    text: "HERO's family is preparing for a vacation overseas. The night before their departure, HERO is ridiculed by hero_his/her siblings and cousins. After a scuffle with hero_his/her older brother, HERO is sent to the third floor of the house, where hero_he/she wishes that hero_his/her family would disappear. During the night, heavy winds cause damage to power lines, which causes the alarm clocks to reset. The family oversleeps. In the confusion and rush to get to the airport in time to catch their flight, HERO is accidentally left behind.",
  },

  { plot_id: "#{plot.first.id}", #home alone
    order: 2,
    text: "Meanwhile, HERO wakes up to find the house empty. Believing hero_his/her wish came true, HERO is overjoyed with freedom. However, HERO's joy turns to fear as hero_he/she encounters hero_his/her neighbor, MENTOR, who is rumored to have murdered mentor_his/her family with a shovel. HERO also encounters SHADOW and TRICKSTER, a pair of burglars who have targeted HERO's house. HERO is initially able to keep them away by making the house appear as if hero_his/her family is at home, but the crooks eventually realize that HERO is home alone."
  },

  { plot_id: "#{plot.first.id}", #home alone
    order: 3,
    text: "HERO overhears SHADOW and TRICKSTER discussing plans for breaking into hero_his/her house that night. HERO goes to church and meets MENTOR, who sits with HERO. They briefly speak. HERO learns that MENTOR is actually a nice person and that the rumors about mentor_him/her are false. MENTOR tells HERO mentor_he/she is watching the choir because mentor_his/her granddaughter is in it, but mentor_he/she never gets to see her because mentor_he/she and mentor_his/her son are estranged. HERO suggests MENTOR try to reconcile.",
  },

  { plot_id: "#{plot.first.id}", #home alone
    order: 4,
    text: "HERO returns home and rigs hero_his/her house with numerous booby traps. SHADOW and TRICKSTER break in, springing the traps and suffering various injuries. While the duo chases HERO around the house, hero_he/she calls the police and escapes the house, luring the duo into a neighboring vacant home. SHADOW and TRICKSTER manage to catch hero_him/her and discuss how they will get their revenge, but MENTOR sneaks in and knocks them unconscious with mentor_his/her snow shovel before they can do anything to HERO. The police arrive and arrest SHADOW and TRICKSTER.",
  },

  { plot_id: "#{plot.first.id}", #home alone
    order: 5,
    text: "On Christmas Day, HERO is disappointed to find that hero_his/her family is still gone. HERO then hears LOVER enter the house and call for hero_him/her. They reconcile and are soon joined by the rest of HERO's family. HERO keeps silent about hero_his/her encounter with SHADOW and TRICKSTER, although FRIEND finds SHADOW's missing gold tooth. Across the street, MENTOR notices HERO and the pair acknowledge each other before MENTOR and mentor_his/her family go home."
  },
])

  # [  #script 1
  #  'script 1 first scene',
  #  'script 1 second scene',
  #  'script 1 third scene',
  #  'script 1 fourth scene',
  #  'script 1 fifth scene'
  # ],
