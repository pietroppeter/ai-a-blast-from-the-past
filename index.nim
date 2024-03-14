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

template slide(ident: untyped, data: Data) = 
  template `slide ident` =
    slide:
      columns:
        column:
          nbText: "## " & data.whenn
          nbText: "#### " & data.who
          nbText: "### " & data.what
        column:
          nbImage(data.image)

slide(Heron,(
  whenn: "60 AD",
  who: "Heron of Alexandria",
  what: "theatre", # todo
  image: "https://placehold.co/600x400",
)
)

when isMainModule:
  nbInit(theme = revealTheme)
  setSlidesTheme(Serif)
  slideTitle
  slideHeron
  nbSave