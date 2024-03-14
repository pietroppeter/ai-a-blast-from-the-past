import nimib, nimislides

template slide(ident: untyped, body: untyped) =
  template `slide ident` =
    slide:
      body

slide(Title):
  nbText: "## AI: a blast from the past"
  nbText: "#### An opinionated and condensed history"
  nbText: "[py4ai.com](py4ai.com)"
  speakerNote """
This is a lightning talk for the conference Py4AI
that is finally happening this Saturday
and that I have spent quite a bunch of time
organizing during my past batch.
Also inspired by Ariel on punchcards from a few weeks ago.

Not finished.

I have 5 minutes and I though I could fit a short history of AI
since AI really started with ChatGPT less than 16 months ago.
I actually found out that there is more to it, so here is a very compressed history of AI.
... and compression fits very well with AI, after all ChatGPT is just a big zip file, right?
"""

type
  Data = tuple
    whenn, who, what: string
    image: string

template slide(
  whenn = "_when_",
  who = "_who_",
  what = "_what_",
  image = "https://placehold.co/600x400",
  notes = "todo",
  ident: untyped,
  ) = 
  template `slide ident` =
    slide:
      columns:
        column:
          nbText: "## " & whenn
          nbText: "#### " & who
          nbText: "### " & what
        column:
          nbImage(image)
      speakerNote notes

slide(
  whenn = "60 AD",
  who = "Hero of Alexandria",
  what = "An Automatic Theatre", # todo
  image = "https://upload.wikimedia.org/wikipedia/commons/2/2e/Hero_of_Alexandria.png",
  notes = """
In Anno Domini 60 Hero of Alexandria created what might have been
"the world's first practical programmable machine
an automatic theatre."

I find fascinating that the first  historical record of AI
- according to Schmidhuber, and who I am to contradict the guy -
is about a form of art that stubbornly refuses to die
- but AI seems to be coming for all artists after all
""",
# https://en.wikipedia.org/wiki/Timeline_of_artificial_intelligence
# https://people.idsia.ch/~juergen/deep-learning-history.html#SHA7a:~:text=Perhaps%20the%20world%27s%20first%20practical%20programmable%20machine%20was%20an%20automatic%20theatre%20made%20in%20the%201st%20century%5BSHA7a%5D%5BRAU1%5D%20by%20Heron%20of%20Alexandria
  Heron
)

slide(
  whenn = "1580",
  who = "Rabbi Judah Loew ben Bezalel",
  what = "Golem", # todo
  image = "https://www.researchgate.net/profile/Amir-Vudka/publication/357910123/figure/fig2/AS:1113612311629827@1642517273373/Der-Golem-Paul-Wegener-1920.png",
  notes = """
Around 1580, Rabbi Judah Loew ben Bezalel of Prague creates the Golem.
Animated by truth, but lacking free will, a golem always does exactly what is told.
The Golem is incredibly powerful but its obedience also brings danger
(and I think it is not time yet to retire this foundational myth of AI and science fiction)
""",
  Golem
)


slide(
  whenn = "1770",
  who = "Van Kempelen",
  what = "Mechanical Turk", # todo
  image = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Racknitz_-_The_Turk_3.jpg/1920px-Racknitz_-_The_Turk_3.jpg",
  notes = """
In 1770 Wolfgang Von Kempelen built the Mechanical Turk
a chess-playing machine that was revealed only 80 years later to be a hoax.
I guess there is a lesson against closed source AI hidden somewhere inside the Mechanical Turk.
""",
  Turk
)

slide(
  whenn = "1676", # 1679
  who = "Leibniz",
  what = "Chain Rule", # todo
  image = "https://placehold.co/600x400",
  notes = """
(and Alphabet of Human Thought)
""",
  Leibniz
)

slide(
  whenn = "1854",
  who = "George Boole",
  what = "Symbolic Language", # todo
  image = "https://placehold.co/600x400",
  notes = """
investigate the fundamental laws of those operations of the mind by which reasoning is performed,
to give expression to them in the symbolic language of a calculus
""",
  Boole
)

slide(
  whenn = "1843",
  who = "Ada Lovelace",
  what = "Notes on Analytical Engine",
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Ada
)

slide(
  whenn = "1943",
  who = "McCulloch and Pitts",
  what = "Neuron", # todo
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Neuron
)

slide(
  whenn = "1945",
  who = "Vannevar Bush",
  what = "As We May Think", # todo
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Vannevar
)

slide(
  whenn = "1950",
  who = "Alan Turing",
  what = "Imitation Game",
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Turing
)

slide(
  whenn = "1956",
  who = "Dartmouth",
  what = "\"Artificial Intelligence\"",
  image = "https://placehold.co/600x400",
  notes = """
todo - add a definition I like of AI:
stuff that I do not yet understand
""",
  Dartmouth
)

slide(
  whenn = "1961",
  who = "Donald Michie",
  what = "MENACE",
  image = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Mscroggs-MENACE-cropped.jpg/700px-Mscroggs-MENACE-cropped.jpg",
  notes = """
In 1961 Donald Michie designed and built "Matchbox Educable Noughts and Crosses Engine"
a mechanical computer made of 304 matchboxes that can learn how to play Tic-Tac-Toe.

Roughly 40 years later I read about MENACE in a crossword weekly magazine
and it is still the best imagine I have in my mind of what
Reinforcement Learning is about.

Look it up, it is worth it!
""",
  Menace
)

slide(
  whenn = "1965",
  who = "Weizenbaum",
  what = "ELIZA",
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Eliza
)

slide(
  whenn = "1969",
  who = "Minsky & Papert",
  what = "Perceptrons",
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Perceptrons
)

slide(
  whenn = "1979",
  who = "Hans Moravec",
  what = "Stanford Cart",
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Moravec
)

slide(
  whenn = "1996",
  who = "X et al",
  what = "Mistral",
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Mistral
)

slide(
  whenn = "2012",
  who = "X Ilya Hinton",
  what = "AlexNet",
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  AlexNet
)

when isMainModule:
  template skip(body: untyped) =
    discard
 
  nbInit(theme = revealTheme)
  setSlidesTheme(Serif)
  skip:
    slideTitle
    slideHeron
    slideGolem
    slideTurk
    slideLeibniz
    slideBoole
    slideAda
    slideNeuron
    slideVannevar
    slideTuring
    slideDartmouth
  slideMenace
  slideEliza
  slidePerceptrons
  slideMoravec
  slideMistral
  slideAlexNet
  nbSave