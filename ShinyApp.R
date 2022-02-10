library(shiny)

ui <- fluidPage(
  textInput("text", label = h3("Please Enter your name"), value = "Last name, First name"),
  
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
  
)

server <- function(input, output, session) {
  output$value <- renderPrint({ input$text })
}

shinyApp(ui, server)