#import "template.typ": *

#set page(
  margin: (
    left: 8mm,
    right: 8mm,
    top: 8mm,
    bottom: 8mm
  ),
)

#set text(font: "Mulish", size: 10.5pt)

// Spacing tuning: fills one page with top and bottom whitespace balanced.
#set par(leading: 0.7em, spacing: 0.78em)
#set list(spacing: 0.68em, indent: 0.5em, body-indent: 0.4em)

// Personal contact details are injected at build time so they never live in git.
//   typst compile --input email=... --input phone=... resume.typ
// See build-private.sh (gitignored).
#let themeColor = rgb("#0F83C0")

#let privateEmail = sys.inputs.at("email", default: "email@example.com")
#let privatePhone = sys.inputs.at("phone", default: none)

#show: project.with(
  theme: themeColor,
  name: "Harnoor Singh",
  contact: (
    contact(
      text: "LinkedIn://iharnoor",
      link: "https://www.linkedin.com/in/iharnoor"
    ),
    contact(
      text: "Github://iharnoor",
      link: "https://www.github.com/iharnoor"
    ),
    contact(
      text: "singhinusa.dev",
      link: "https://singhinusa.dev"
    ),
    contact(
      text: privateEmail,
      link: "mailto:" + privateEmail
    ),
    ..if privatePhone != none {
      (contact(text: privatePhone, link: "tel:" + privatePhone),)
    } else { () }
  ),
  main: (
    section(
      title: "Experience",
      content: (
        subSection(
          title: "HydraDB",
          titleEnd: "San Francisco, CA",
          subTitle: "Developer Relations Engineer",
          subTitleEnd: "(March 2026 – Present)",
          content: list(
            [Built and shipped *two products on HydraDB*, #link("https://budgetsf.com")[#text(themeColor, weight: "bold")[budgetsf.com]] and #link("https://skillmake.xyz")[#text(themeColor, weight: "bold")[skillmake.xyz]], that became the platform's flagship reference apps and drew *100K+ visitors*.],
            [Ran *10+ developer hackathons* end to end, covering format, technical content, live builder support, and judging.],
            [Brought in *100+ builders* who shipped real projects on HydraDB and became its earliest advocates.],
            [Gathered feedback at every event and turned it into prioritized product and developer experience improvements.],
            [Dogfooded the platform through my own launches, catching API and docs gaps before customers hit them.]
          ),
        ),
        subSection(
          title: "Microsoft Corp.",
          titleEnd: "Atlanta, GA",
          subTitle: "Software Engineer",
          subTitleEnd: "(July 2022 – April 2025)",
          content: [
            *AI / Applied ML (Microsoft Security)*
            #list(
              [Architected and implemented *AI-driven query translation (NL2KQL)* using *Vector Databases and Retrieval-Augmented Generation (RAG)* pipelines, enabling natural-language security analytics over structured telemetry.],
              [Owned the *end-to-end design, implementation, and validation* of AI-enhanced workflows, partnering with security engineers and PMs to ensure *correctness, scalability, and production readiness*.],
              [Led experimentation and *prompt optimization strategies* to improve query accuracy and system reliability in production security environments.],
              [*Technologies:* LLM-based APIs, RAG Pipelines, Vector Databases, NL2KQL, Security Analytics]
            )
            *Mobile Engineering / Platform (Microsoft Defender)*
            #list(
              [Led the design and development of *end-to-end native test frameworks* for Microsoft Defender *Android and iOS*, *doubling release velocity (2× faster)* while improving regression coverage and reliability.],
              [Built and maintained *native mobile testing infrastructure*, enabling faster iteration cycles and reducing production regressions across multiple Defender releases.],
              [Collaborated with cross-platform mobile teams to integrate testing pipelines into CI/CD workflows.],
              [*Technologies:* Android, iOS, Native Testing Frameworks, Automated Testing, CI/CD]
            )
            *Cross-Functional / Developer Advocacy*
            #list(
              [Partnered with the *Microsoft Designer* team as a creative collaborator, contributing to *go-to-market strategy* and producing technical marketing content, for my YouTube channel Singh in USA (*1M+ subscribers*).]
            )
          ],
        ),
        subSection(
          title: "NCR (National Cash Register)",
          titleEnd: "Atlanta, GA",
          subTitle: "Software Engineer",
          subTitleEnd: "(July 2020 – July 2022)",
          content: list(
            [Contributed to NCR Silver POS Android application, working within a *1M+ LOC* codebase spanning *19 modules* and serving hundreds of thousands of global users.],
            [Served as *Atlanta team lead and Scrum Master*, coordinating execution for *11 engineers and QA members*, driving sprint planning, delivery, and cross-team alignment.],
            [Engineered production features using *Dagger2, RxJava, Kotlin Multiplatform, and C++*, including cross-platform shared libraries for business-critical workflows.],
            [Designed and implemented instrumentation and unit testing frameworks using *Espresso, Mockito, and JUnit*, improving stability and reducing post-release defects.],
            [Acted as a technical interviewer and campus recruiter, representing NCR at university engineering fairs and contributing to intern hiring pipelines.],
            [*Technologies:* Android, Kotlin, RxJava, Dagger2, C++, Espresso, Mockito, JUnit]
          ),
        ),
        subSection(
          title: "Panasonic Automotive",
          titleEnd: "Peachtree City, GA",
          subTitle: "Systems Engineering Intern",
          subTitleEnd: "(May 2017 – May 2018)",
          content: list(
            [Built an Android-based infotainment simulation app replicating Panasonic's in-car entertainment system, reducing developer onboarding and use-case understanding time by ~2×.]
          ),
        ),
      ),
    ),
    section(
      title: "Education",
      content: (
        subSection(
          title: "Georgia State University",
          titleEnd: "Atlanta, GA",
          subTitle: "BS & MS in Computer Science",
          subTitleEnd: "(2016 – 2020)",
          content: [
            *summa cum laude* | GPA: 4.0\
            President's List, Honors College
          ],
        ),
      ),
    )
  ),
  sidebar: (),
)

