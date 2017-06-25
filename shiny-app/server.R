library(shiny)

shinyServer(function(input, output) {
   
  values <- reactiveValues()
  
  observe({
    input$calculateInterest
    values$interest <- isolate({
      
      input$principal * input$rate * input$year /100
      
    })
  })
  
  output$principal <- renderText({
    input$principal
    paste("You selected Principal to be", isolate(input$principal))
  })
  
  output$rate <- renderText({
    input$rate
    paste("You selected Rate of Interest to be", isolate(input$rate))
  })
  
  output$year <- renderText({
    input$year
    paste("You selected the tenure to be", isolate(input$year))
  })
  
  output$interest <- renderText({
      paste("Your simple interest is calculated to be:", values$interest)
  })
  
  

  

  
})