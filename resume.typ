#import "template.typ": *
#import "@preview/fontawesome:0.5.0": *

#set page(
  margin: (
    left: 8mm,
    right: 8mm,
    top: 8mm,
    bottom: 8mm
  ),
)

#set text(font: "Mulish", size: 9.1pt)

// Spacing tuning: fills one page with top and bottom whitespace balanced.
#set par(leading: 0.7em, spacing: 0.78em)
#set list(spacing: 0.68em, indent: 0.5em, body-indent: 0.4em)

// Personal contact details are injected at build time so they never live in git.
//   typst compile --input email=... --input phone=... resume.typ
// See build-private.sh (gitignored).
#let themeColor = rgb("#25A269")
#let privateEmail = sys.inputs.at("email", default: "email@example.com")
#let privatePhone = sys.inputs.at("phone", default: none)

#show: project.with(
  theme: themeColor,
  name: "Timothy Li",
  contact: (
    contact(
      icon: fa-icon("linkedin"),
      text: "linkedIn://timothyurl",
      link: "https://www.linkedin.com/in/timothyurl"
    ),
    contact(
      icon: fa-icon("github"),
      text: "github://ttiimmothy",
      link: "https://www.github.com/ttiimmothy"
    ),
    contact(
      icon: fa-icon("link"),
      text: "ttiimmothy.com",
      link: "https://ttiimmothy.com"
    ),
    contact(
      icon: fa-icon("envelope"),
      text: privateEmail,
      link: "mailto:" + privateEmail
    ),
    ..if privatePhone != none {
      (contact(
        icon: fa-icon("phone"), 
        text: privatePhone, 
        link: "tel: " + privatePhone
      ),)
    } else { () }
  ),
  main: (
    section(
      title: "Summary",
      content: (
        subSection(
          summary: [
            *Full-stack software engineer* with 5+ years building web, mobile, and cloud systems in *React, Node.js, .NET, and Python*. I specialize in automation and *DevOps*: shipped AI-assisted workflows for enterprise proposals and led CI/CD + AWS migrations that cut costs and delivery time by double-digit percentages. I write code test-first and push it to production through reliable pipelines.
          ],
        ),
      ),
    ),
    section(
      title: "Work Experience",
      content: (
        subSection(
          title: "Computacenter",
          titleEnd: "Feb 2025 – Aug 2026",
          subTitle: "Software Engineer",
          subTitleEnd: "Toronto, ON",
          content: list(
            [*Led the CloudCheckr deliverable* for the OECM program, coordinating product, vendors, and the client to ship on time and cut project turnaround by 20%.],
            [*Built an AI-powered RFP response system* using Claude for document extraction and context engineering with role and persona configuration, raising bid win rate by 20%.],
            [Integrated *Claude and Perplexity retrieval* into a governed context-engineering workflow to keep generated proposals grounded in source documents.],
          ),
        ),
        subSection(
          title: "Storeforce",
          titleEnd: "Aug 2022 – May 2023",
          subTitle: "Software Engineer",
          subTitleEnd: "Toronto, ON",
          content: [
            #list(
              [Spearheaded *a React web application* through Azure Boards, improving ticket handling and raising customer satisfaction by 30%.],
              [*Rewrote stored-procedure SQL* to speed the retail dashboard's store-auditing page by 90% and overall query loading by 100%+.],
              [*Added filtering and employee-borrowing features* to the retail dashboard and worked with backend/DevOps on headless APIs and daily agile releases],
              [*Built core Xamarin components* and migrated an existing app to React Native and introduced unit testing to support CI/CD.],
            )
          ],
        ),
        subSection(
          title: "Cable Television",
          titleEnd: "Sep 2021 - Jun 2022",
          subTitle: "Software Developer",
          content: list(
            [*Architected a microservices migration* with Docker that supported 1M+ user visits.],
            [*Designed and launched a new company website* with Figma + Next.js and deployed on AWS, improving SEO tracking accuracy by 60%.],
            [*Rebuilt the mobile app* in React Native + GraphQL, increasing data-customization for rendering by 80% and revenue by 20%.],
            [*Migrated workloads from SFTP to AWS* and introduced CI/CD, cutting operational costs by 20%, and boosted data-processing speed by 35% via SQL indexing, transactions, and constraints.],
          ),
        ),
        subSection(
          title: "Ecosa",
          titleEnd: "Jun 2021 - Aug 2021",
          subTitle: "Backend Engineer",
          content: list(
            [*Cut CMS search query time by 40%* by optimizing SQL and resolved Unicode issues across the e-commerce CMS.],
            [*Shipped a weekly-shipment Slack notification* to track stock capacity.],
            [*Diagnosed and fixed high-traffic server issues*, reducing downtime by 30%.],
          ),
        ),
      ),
    ),
    section(
      title: "Education",
      content: (
        subSection(
          title: "Tecky Academy",
          titleEnd: "Feb 2021 - Jun 2021",
          subTitle: "MicroMaster, A.I. & Programming Bootcamp",
        ),
        subSection(
          title: "Hong Kong University of Science and Technology",
          titleEnd: "Sep 2014 - Jun 2018",
          subTitle: "Bachelor of Engineering in Civil Engineering",
        ),
      ),
    ),
    section(
      title: "Projects",
      content: (
        subSection(
          title: "Fitness Habit Tracker",
          content: list(
            [Engineered a full-stack fitness habit tracker with React, Astro, Zustand, and FastAPI, enabling users to create recurring habits and track completion across daily and weekly schedules.],
            [Built interactive progress visualizations and a state-management architecture with Zustand, delivering a responsive tracking experience and maintaining consistent habit data across the application.],
          ),
        ),
        subSection(
          title: "TTC ETA Tracker",
          content: list(
            [Engineered a web application for users to check TTC estimated arrival times with React and Redux.],
          ),
        ),
      ),
    ),
    section(
      title: "Technical Skills",
      content: (
        subSection(
          content: [*Languages*:  TypeScript, JavaScript, Python, C\#, Java, PHP, SQL, HTML, CSS, SCSS\
          *Frameworks*:  React, Next.js, Redux, Vue, Angular, Node.js, Express, NestJS, Django, Spring Boot, .NET, GraphQL, RESTful APIs\
          *Data*:  PostgreSQL, MySQL, MongoDB, Redis, Apache Kafka, SQL optimization, indexing, transactions\
          *Cloud & DevOps*:  AWS (Lambda, S3, EC2), Docker, Kubernetes, Terraform, GitHub Actions, GitLab CI, Azure DevOps, GCP\
          *AI/ML*:  Claude Code, Perplexity, MCP, prompt engineering, RAG context engineering, TensorFlow, scikit-learn],
        ),
      ),
    )
  ),
)