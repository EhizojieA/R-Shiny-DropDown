library(shiny)

server = function(input, output){
  
  output$selected_var <- renderText((
    paste("You have selected", input$region, "and", input$prodCat)
  ))
}

ui <- fluidPage(
  h1("Practice for Interview"),
  selectInput("region",
            label = "Region",
            choices = c("Region 1", "Region 2"),
            selected = "Region 2"),
    
            
  selectInput("prodCat",
            label = "Product Category",
            choices = c("Category 1", "Category 2", "Category 3"),
            selected = "Category 3"),
            
  textOutput("selected_var")
  )


shinyApp(ui = ui, server = server)
