#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    genre_id: 4, #drama
    "title": "The Match Factory Girl",
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
    "text": "HERO is a rather plain person who lives with and helps support hero_his/her mother, MENTOR, and mentor_his/her lover, FRIEND. HERO has a hard time attracting lovers, but one evening at the local dance club HERO meets SHADOW, who thinks HERO is a prostitute, although HERO does not realize that. They spend the night together, and SHADOW leaves the next morning before HERO awakes. HERO arranges for a second date with SHADOW, and introduces shadow_him/her to hero_his/her parents. During the date, SHADOW harshly informs hero_his/her that shadow_his/her does not desire hero_his/her affection, and HERO leaves crying. HERO later discovers that hero_he/she is pregnant, and writes to SHADOW a letter asking shadow_him/her to raise the child with hero_him/her. HERO receives a letter back simply stating \"Get rid of the brat,\" along with a check for 10,000 marks. HERO becomes distraught and goes outside, leaving the letter and check on the table, where MENTOR finds them. While wandering around upset, HERO is hit by a car and has a miscarriage. FRIEND visits HERO in the hospital and tells hero_him/her hero_he/she must move out of the apartment, because hero_he/she has disappointed MENTOR."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "HERO moves in with hero_his/her brother and becomes more despondent and upset with hero_his/her situation. HERO buys rat poison, mixes it with water, and puts it into a small bottle, which hero_he/she puts into hero_his/her purse. She goes to SHADOW's apartment and tells shadow_him/her hero_he/she wants a drink. SHADOW brings the drinks, but HERO asks for ice, and when SHADOW goes to get it, HERO pours some of the rat poison into shadow_his/her drink. When SHADOW returns with the ice, shadow_he/she places it in HERO's glass. HERO tells shadow_him/her that everything is taken care of and that shadow_he/she need not worry, because this will be the last time shadow_he/she will ever see hero_him/her. HERO hands SHADOW the check shadow_he/she had sent, quickly drinks most of hero_his/her drink, and leaves. SHADOW sits quietly for a few moments, then shadow_he/she drinks shadow_his/her drink."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "On the way home from SHADOW's place, HERO stops into a bar, orders a beer, takes a seat at the bar, and starts to read a book. TRICKSTER sits beside hero_him/her, uninvited, and tries to catch hero_his/her attention. HERO smiles at TRICKSTER, takes the bottle of rat poison out of hero_his/her purse, and pours some into TRICKSTER_his/her glass. HERO leaves, and TRICKSTER finishes trickster_his/her drink."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "HERO visits MENTOR and FRIEND. HERO prepares them a meal and pours the rest of the rat poison into the vodka they will drink. While they eat, HERO sits in the living room smoking a cigarette and listening to music. After a while hero_he/she gets up to look into the dining room, where hero_he/she sees MENTOR and FRIEND are dead."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "The next day at work, HERO is taken away by the police."
  }
])
