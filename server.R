library("shiny")
library("shinyjs")
library("readr")
library("dplyr")

write_date <- function(){
        date() %>%
                as.data.frame() %>%
                write_csv("TEST")
}

shinyServer(function(input, output, session) {
        output$results = renderPrint({
                input$plays_r
        })
        observeEvent(input$plays_r, {
                write_date()
        })
}) 
        
