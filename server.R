library("shiny")
library("shinyjs")
library("readr")
library("dplyr")

write_date <- function(){
        if (exists("TEST")) {
                read_csv("TEST") %>%
                rbind(date()) %>%
                write_csv("TEST")
        }
        else {
                write_csv(as.data.frame(date()), "TEST")
        }       
}

shinyServer(function(input, output, session) {
        output$results = renderPrint({
                input$plays_r
        })
        observeEvent(input$plays_r, {
                write_date()
        })
}) 
        
