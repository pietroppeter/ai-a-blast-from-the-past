import nimib, nimislides

template slide(ident: untyped, body: untyped) =
  template `slide ident` =
    slide:
      body

slide(Title):
  nbText: "## AI: a blast from the past"
  nbText: "#### selected milestones from AI history"
  speakerNote """
I have 5 minutes and I though I could fit a short history of AI
since AI really started with ChatGPT less than 16 months ago.

I actually found out that there is more to it, so here is a very compressed history of AI.
... and compression fits very well with AI, after all ChatGPT is just a big zip file, right?
"""

slide(Recurse):
  nbText: "### Thank you"
  nbText: "Inspired by Recurse Center"
  nbImage("https://upload.wikimedia.org/wikipedia/commons/5/5a/Recurse_Center.png")
  nbText("[recurse.com](recurse.com)")

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
"the world's first practical programmable machine:
an automatic theatre."

I find fascinating that the first  historical record of AI -
according to Schmidhuber, and who I am to contradict the guy -
is about a form of art that stubbornly refuses to die.

But AI seems to be coming for all artists after all
""",
# https://en.wikipedia.org/wiki/Timeline_of_artificial_intelligence
# https://people.idsia.ch/~juergen/deep-learning-history.html#SHA7a:~:text=Perhaps%20the%20world%27s%20first%20practical%20programmable%20machine%20was%20an%20automatic%20theatre%20made%20in%20the%201st%20century%5BSHA7a%5D%5BRAU1%5D%20by%20Heron%20of%20Alexandria
  Hero
)

slide(
  whenn = "1580",
  who = "Rabbi Judah Loew ben Bezalel",
  what = "Golem", # todo
  image = "https://www.researchgate.net/profile/Amir-Vudka/publication/357910123/figure/fig2/AS:1113612311629827@1642517273373/Der-Golem-Paul-Wegener-1920.png",
  notes = """
Around 1580, Rabbi Judah Loew ben Bezalel of Prague creates the Golem.
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
  whenn = "1843",
  who = "Ada Lovelace",
  what = "Notes on Analytical Engine",
  image = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Ada_Lovelace_in_1852.jpg/440px-Ada_Lovelace_in_1852.jpg",
  notes = """
In 1843 Ada Lovelace, in the same set of notes where she
published the first program of history (for a machine that would never be built),
makes the following remark:
"The Analytical Engine has no pretensions whatever to originate anything.
It can do whatever we know how to order it to perform.
It can follow analysis; but it has no power of anticipating any analytical relations or truths"
""",
# https://en.wikipedia.org/wiki/Ada_Lovelace#Ada_Byron's_notes_on_the_analytical_engine
  Ada
)
slide(
  whenn = "1943",
  who = "McCulloch and Pitts",
  what = "Neuron", # todo
  image = "https://pbs.twimg.com/media/DR1U7V3WAAAdFUM?format=jpg&name=large",
  notes = """
It is rather well known that the first appearance of
a Neuron model was in article of 1943 by McCulloch and Pitts.

It is less well known that the same article stimulated
an analysis by mathematician Stephen Kleene
which introduced a tool used by every developer: Regular Expressions.
""",
  Neuron
# https://whyisthisinteresting.substack.com/p/the-regular-expression-edition
)

slide(
  whenn = "1961",
  who = "Donald Michie",
  what = "MENACE",
  image = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Mscroggs-MENACE-cropped.jpg/700px-Mscroggs-MENACE-cropped.jpg",
  notes = """
In 1961 Donald Michie designed and built "Matchbox Educable Noughts and Crosses Engine"
a mechanical computer made of 304 matchboxes that can learn how to play Tic-Tac-Toe.

Roughly 40 years later I read about MENACE in a Italian crossword weekly magazine
and it is still the best imagine I have in my mind of what
Reinforcement Learning is about.

Look it up, it is worth it!
""",
  Menace
)

slide(
  whenn = "1966",
  who = "Joseph Weizenbaum",
  what = "ELIZA",
  image = "https://upload.wikimedia.org/wikipedia/commons/7/79/ELIZA_conversation.png",
  notes = """
Around 1966 Joseph Weizenbaum created ELIZA,
a chatbot that was able to simulate a a psychotherapist of the Rogerian school.
The technology used is mainly pattern matching using regular expressions.

Weizenbaum said at the time: "What I had not realized is that extremely short exposures
to a relatively simple computer program could induce powerful delusional thinking
in quite normal people".
""",
  Eliza
)

slide(
  whenn = "1969",
  who = "Minsky & Papert",
  what = "Perceptrons",
  image = "https://m.media-amazon.com/images/I/51-Rg3IuYrL._SY522_.jpg",
  notes = """
In 1969 Marvin Minsky and Seymour Papert
published the book Perceptrons.

The book contains a number of mathematical proofs
that emphasized limitations of a neural nets based
approach to AI and was influential in
concentrating research efforts towards the symbolic approach.
""",
  Perceptrons
# https://www.jstor.org/stable/285702?read-now=1&seq=40#page_scan_tab_contents
)

slide(
  whenn = "1979",
  who = "Hans Moravec",
  what = "Stanford Cart",
  image = "https://web.stanford.edu/~learnest/sail/oldcart.fld/image006.png",
  notes = """
In 1979 Hans Moravec was able to make the Stanford Cart
cross a room filled with chairs without human intervention in about five hours.

He later phrased what is now known as Moravec Paradox:
"it is comparatively easy to make computers exhibit
adult level performance on intelligence tests or playing checkers,
and difficult or impossible to give them the skills of a one-year-old
when it comes to perception and mobility"
""",
# https://web.stanford.edu/~learnest/sail/oldcart.html
  Moravec
)

slide(
  whenn = "1996",
  who = "ISMES/CESI",
  what = "Mistral",
  image = "https://www.cesi.it/app/uploads/2022/06/22.06.22-itapiu-dam.jpg",
  notes = """
In 1996 ISMES, later acquired by CESI, develops Mistral,
an Expert System that is still used in Dams all over the world
to monitor their safety.

Expert systems were the first truly succesful AI technology that
starting in the 70s generated excitement and big investments.
Until they didn't anymore.
""",
  Mistral
# https://www.cesi.it/about-us/overview/ismes/
)

when isMainModule:
  template skip(body: untyped) =
    discard
 
  nbInit(theme = revealTheme)
  footer("[github.com/pietroppeter/ai-a-blast-from-the-past](https://github.com/pietroppeter/ai-a-blast-from-the-past)")
  setSlidesTheme(Serif)
  slideTitle # timed at 16 secs
  slideHero # 25
  slideGolem # 25
  slideTurk # 19
  slideAda # 25
  slideNeuron # 20
  slideMenace # 25
  slideEliza # 26
  slidePerceptrons # 16
  slideMoravec # 29
  slideMistral # 20
  slideRecurse
  nbSave
  # 16 + 25 + 25 + 19 + 25 + 20 + 25 + 26 + 16 + 29 + 20 = 246 (60*5=300)
  # a full run was timed at 4:45