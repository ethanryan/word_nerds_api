plot = Plot.create([
  { genre_id: 3, #action
    title: "Die Hard",
    author: "Steven E. de Souza, Jeb Stuart"
  },
])

paragraphs = Paragraph.create([
  { plot_id: "#{plot.first.id}", #die hard
    order: 1,
    text: "Detective HERO arrives in the city to reconcile with LOVER. FRIEND drives HERO to the corporate headquarters for a company party. While HERO changes clothes, the party is disrupted by the arrival of SHADOW and shadow_his/her heavily armed terrorist group made up of MENTOR and nine thugs named TRICKSTER. The group seizes the tower and takes everyone inside as hostages, except for HERO, who manages to slip away.",
  },

  { plot_id: "#{plot.first.id}", #die hard
    order: 2,
    text: "Away from the hostages, SHADOW interrogates TRICKSTER for the code to the building's vault. TRICKSTER refuses to cooperate and is executed. HERO, who was secretly watching, is pursued by TRICKSTER. HERO kills TRICKSTER, taking trickster_his/her weapon and radio. HERO contacts the police. FRIEND is sent to investigate. SHADOW sends Ogre and TRICKSTER to stop HERO, who kills them both. FRIEND is greeted by MENTOR, who poses as a receptionist. As FRIEND leaves, HERO drops TRICKSTER's corpse onto friend_his/her car. FRIEND summons the police, who surround the building. HERO takes Ogre's bag containing C-4 explosives and detonators."
  },

  { plot_id: "#{plot.first.id}", #die hard
    order: 3,
    text: "A SWAT team assaults the building, but the bad guys massacre them with rockets. HERO uses C-4 to blow up the floor occupied by the bad guys. LOVER's coworker attempts to mediate between SHADOW and HERO for the return of the detonators. HERO refuses, so SHADOW murders the guy. While HERO checks the explosives attached to the roof, SHADOW poses as an escaped hostage. HERO SHADOW gives SHADOW a gun. SHADOW tries to shoot HERO but finds the gun is unloaded. TRICKSTER arrives with some bad guys. HERO kills the bad guys, then flees, leaving the detonators behind."
  },

  { plot_id: "#{plot.first.id}", #die hard
    order: 4,
    text: "FBI agents order the building's power be shut off. As SHADOW had anticipated, the loss of power disables the vault's final lock. SHADOW demands that a helicopter arrive on the roof for transport. TRICKSTER and HERO fight. HERO kills TRICKSTER and heads to the roof. HERO sends the hostages back downstairs before the explosives detonate, destroying the helicopter. A weary HERO finds LOVER with SHADOW and shadow_his/her remaining goons. HERO surrenders hero_his/her machine gun to spare LOVER, but then distracts SHADOW and MENTOR by laughing, allowing hero_him/her to grab a concealed handgun taped to hero_his/her back. HERO shoots SHADOW then kills MENTOR with hero_his/her final shot. SHADOW crashes through a window, momentarily saving shadow_him/herself by grabbing LOVER's watch. HERO releases it and SHADOW falls to shadow_his/her death."
  },

  { plot_id: "#{plot.first.id}", #die hard
    order: 5,
    text: "HERO and LOVER are escorted from the building and meet FRIEND in person. TRICKSTER emerges from the building disguised as a hostage and attempts to shoot HERO, but FRIEND guns trickster_him/her down. TRICKSTER crashes through the parking garage door in the limo. TRICKSTER arrives and attempts to interview HERO, but is punched by LOVER. HERO and LOVER are driven away by TRICKSTER."
  },
])


  # [  #script 1
  #  'script 1 first scene',
  #  'script 1 second scene',
  #  'script 1 third scene',
  #  'script 1 fourth scene',
  #  'script 1 fifth scene'
  # ],
