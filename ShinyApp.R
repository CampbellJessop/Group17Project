library(shiny)
library(fpp3)
data("tourism")

ui <- fluidPage(
  plotOutput("plot"),
  selectInput("Purpose", label = h3("Select Purpose"), 
              choices = list("Business", "Holiday", "Visiting", "Other"), 
              selected = 1),
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$plot <- renderPlot({autoplot(filter(tourism, Region == "Adelaide", Purpose == input$Purpose))})
  output$value <- renderPrint({ input$Purpose })
}

shinyApp(ui, server)

