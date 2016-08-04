library(shiny)
fluidPage(
  titlePanel("Poison Distribution"),
  
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("Lambda",
                  "Lambda:",
                  min = 0,
                  max = 25,
                  value = 2),
      inputPanel(
        p("Simulation"),
        sliderInput("obs",
                  "Number of observations",
                  min = 0,
                  max = 1000,
                  value = 50),
        actionButton("go","Generate Simulation")
      )
    ),
    mainPanel(
      plotOutput("distPlot"),
      plotOutput("simplot")
    )
  )
)