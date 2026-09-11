#let contact(text: "", link: none) = {
  (text: text, link: link)
}

#let subSection(title: none, titleEnd: none, subTitle: none, subTitleEnd: none, content: none, summary: none) = {
  (title: title, titleEnd: titleEnd, subTitle: subTitle, subTitleEnd: subTitleEnd, content: content, summary: summary)
}

#let section(title: "", content: subSection()) = {
  (title: title, content: content)
}

#let project(
  theme: "",
  name: "",
  email: none,
  title: none,
  contact: ((text: [], link: "")),
  skills: (
    languages: ()
  ),
  main: (
    (title: "", content: [])
  ),
  sidebar: (),
  body) = {

  let backgroundTitle(content) = {
    align(center, box(fill: theme, text(white, size: 1.25em, weight: "bold", upper(content)), width: 1fr, inset: 0.3em))
  }

  let secondaryTitle(content) = {
    text(weight: "bold", size: 1.125em, content)
  }

  let summaryContent(content) = {
    text(size: 1.1em, content)
  }

  let italicColorTitle(content) = {
    text(weight: "bold", style: "italic", size: 1.125em, theme, content)
  }


  let formattedName = block(text(2.5em, weight: "bold", theme, name))

  let contactLine = contact.map(c => {
    if c.link == none [
      #c.text
    ] else [
      #link(c.link, text(theme, c.text))
    ]
  }).join("  ")

  align(center)[
    #formattedName
    #v(0.3em)
    #contactLine
  ]
  
  set par(justify: true)

  let createLeftRight(left: [], right: none) = {
    if (right == none) { 
      align(start, text(left))
    } else {
      grid(
        columns: (1fr, 1fr),
        align(start, text(left)),
        align(end, right),
      )
    } 
  }

  let parseSubSections(subSections) = {
    subSections.map(s => {
      [
        #createLeftRight(
          left: secondaryTitle(s.title),
          right: s.titleEnd
        )
        #if s.subTitle != none or s.subTitleEnd != none [
          #text(
            top-edge: 0.6em,
            createLeftRight(
              left: italicColorTitle(s.subTitle),
              right: italicColorTitle(s.subTitleEnd)
            ),
          )
        ]
        #s.content
        #summaryContent(s.summary)
      ]
    }).join()
  }

  let parseSection(section) = {
    section.map(m => {
      [
        #backgroundTitle(m.title)
        #parseSubSections(m.content)
      ]
    }).join()
  }

  let mainSection = parseSection(main)
  let sidebarSection = parseSection(sidebar)


  mainSection
}