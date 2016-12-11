library("shiny")
library("shinyjs")
library("readr")
library("dplyr")
library("googlesheets")


data <- gs_title("mindfullness")

write_date <- function(){
        # attempt to store data to a google sheet. 
        
        new_data <- c("user", date(), date())
        
        data %>%
                gs_add_row(ws = 1, new_data)
        
        # below is writing a 'physical file' to drive
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
        
