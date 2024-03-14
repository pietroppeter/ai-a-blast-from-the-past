import nimib, nimislides

template slide(ident: untyped, body: untyped) =
  template `slide ident` =
    slide:
      body

slide(Title):
  nbText: "## AI: a blast from the past"
  nbText: "#### An opinionated and condensed history"

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
  who = "Heron of Alexandria",
  what = "theatre", # todo
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Heron
)

slide(
  whenn = "1580",
  who = "Rabbi",
  what = "Golem", # todo
  image = "https://placehold.co/600x400",
  notes = """
todo
""",
  Golem
)


slide(
  whenn = "1770",
  who = "Van Kempelen",
  what = "Mechanical Turk", # todo
  image = "https://placehold.co/600x400",
  notes = """
todo
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
  image = "https://placehold.co/600x400",
  notes = """
todo
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
  nbInit(theme = revealTheme)
  setSlidesTheme(Serif)
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