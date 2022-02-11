library(shiny)
library(fpp3)
data("tourism")

ui <- fluidPage(
  plotOutput("plot")
)

server <- function(input, output, session) {
  output$plot <- renderPlot({autoplot(filter(tourism, Region == "Adelaide"))})
}

shinyApp(ui, server)
