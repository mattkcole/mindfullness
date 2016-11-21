
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output, session) {

#   output$distPlot <- renderPlot({
# 
#     # generate bins based on input$bins from ui.R
#     x    <- faithful[, 2]
#     bins <- seq(min(x), max(x), length.out = input$bins + 1)
# 
#     # draw the histogram with the specified number of bins
#     hist(x, breaks = bins, col = 'darkgray', border = 'white')
# 
#   })
  
        user <- reactive({
                session$user
        })
        
        isResearcher <- reactive({
                if (user() == "researcher"){
                        return(TRUE)
                } else{
                        return(FALSE)
                }
        })
        
        myData <- reactive({
                if (isResearcher()){
                        # If a manager, show everything.
                        return(RecData)
                } else{
                        # If a regular salesperson, only show their own sales.
                        return(RecData[RecData$person == user(),])
                }
        })

})
