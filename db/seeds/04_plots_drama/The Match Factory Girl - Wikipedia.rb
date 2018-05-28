#select array within Plot.create(), then click: Packages > Pretty JSON > Prettify
plot = Plot.create([
  {
    genre_id: 4, #drama
    "title": "The Match Factory Girl - Wikipedia.rb",
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
    "text": "Iris is a rather plain woman who lives with and helps support her mother and stepfather. She has a hard time attracting men, but one evening at the local dance club she meets Aarne, who thinks she's a prostitute, although Iris does not realize that. They spend the night together, and Aarne leaves the next morning before Iris awakes. Iris arranges for a second date with Aarne, and introduces him to her parents. During the date, Aarne harshly informs her that he does not desire her affection, and she leaves crying. Iris later discovers that she is pregnant, and writes to Aarne a letter asking him to raise the child with her. She receives a letter back simply stating \"Get rid of the brat,\" along with a check for 10,000 marks. Iris becomes distraught and goes outside, leaving the letter and check on the table, where her mother finds them. While wandering around upset, Iris is hit by a car and she has a miscarriage. Her stepfather visits Iris in the hospital and tells her she must move out of the apartment, because she has disappointed her mother."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 2,
    "text": "Iris moves in with her brother and becomes more despondent and upset with her situation. She buys rat poison, mixes it with water, and puts it into a small bottle, which she puts into her purse. She goes to Aarne's apartment and tells him she wants a drink. Aarne brings the drinks, but Iris asks for ice, and when Aarne goes to get it, Iris pours some of the rat poison into his drink. When Aarne returns with the ice, he places it in Iris's glass. She tells him that everything is taken care of and that he need not worry, because this will be the last time he will ever see her. She hands him the check he'd sent, quickly drinks most of her drink, and leaves. Aarne sits quietly for a few moments, then he drinks his drink."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 3,
    "text": "On the way home from Aarne's place, Iris stops into a bar, orders a beer, takes a seat at the bar, and starts to read a book. A man sits beside her, uninvited, and tries to catch her attention. Iris smiles at the man, takes the bottle of rat poison out of her purse, and pours some into his glass. She leaves, and the man finishes his drink."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 4,
    "text": "Iris visits her mother and stepfather. She prepares them a meal and pours the rest of the rat poison into the vodka they will drink. While they eat, Iris sits in the living room smoking a cigarette and listening to music. After a while she gets up to look into the dining room, where she sees her mother and stepfather are dead."
  },
  {
    "plot_id": "#{plot.first.id}",
    "order": 5,
    "text": "The next day at work, Iris is taken away by the police."
  }
])
