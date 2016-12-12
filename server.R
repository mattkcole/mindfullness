library("shiny")
library("shinyjs")
library("readr")
library("dplyr")
library("googlesheets")
library("lubridate")

data <- gs_title("mindfullness")

write_date <- function(user, file, action, date, h, m, s){
        # attempt to store data to a google sheet. 
        
        new_data <- c(user, file, action, date, h, m, s)
        
        data %>%
                gs_add_row(ws = 1, new_data)
}     

shinyServer(function(input, output, session) {
        output$results = renderPrint({
                as.data.frame(input$plays_r)
        })
        observeEvent(input$plays_r, {
                write_date(user = "User", file = input$plays_r[1], 
                           action = "play", date = as.character(today()),
                           h = hour(ymd_hms(now())), m = minute(ymd_hms(now())),
                           s = second(ymd_hms(now())))
        })
        observeEvent(input$pause_r, {
                write_date(user = "User", file = input$pause_r[1], 
                           action = "pause", date = as.character(today()),
                           h = hour(ymd_hms(now())), m = minute(ymd_hms(now())),
                           s = second(ymd_hms(now())))
        })
}) 
   


