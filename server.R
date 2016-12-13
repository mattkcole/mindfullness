library("shiny")
library("shinyjs")
library("readr")
library("dplyr")
library("googlesheets")
library("lubridate")
library("datasets")

# CODE FROM ss

# ENCRYPTION INFORMATION

Logged = FALSE;
PASSWORD <- data.frame(Name = c("USER","Matt","Sarah"), 
                       Password = c("25d55ad283aa400af464c76d713c07ad",
                                    "7c1f90bd9bdc70cc059640a7a6209389",
                                    "28e5481a80aa2bd18c8cf35d0495980a"))
# Define server logic required to summarize and view the selected dataset


## mc BELOW functions dealing with javascript


data <- gs_title("mindfullness")

write_date <- function(user, file, action, date, h, m, s){
        # attempt to store data to a google sheet. 
        
        new_data <- c(user, file, action, date, h, m, s)
        
        data %>%
                gs_add_row(ws = 1, new_data)
}     

shinyServer(function(input, output, session) {
        ## ss below
        source("rscripts/Login.R",  local = TRUE)
        
        ## mc below
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
        
        # ss below
        
        observe({
                if (USER$Logged == TRUE) {
                        output$obs <- renderUI({ page })
                }
        })
}) 
   


