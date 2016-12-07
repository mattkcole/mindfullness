
library(shiny)

shinyServer(function(input, output, session) {

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
