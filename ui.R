
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library("shiny")
library("tuneR")
library("markdown")

shinyUI(fluidPage(
        
        mainPanel(
                h3("clientData values"),
                verbatimTextOutput("clientdataText")
        ),
        
        # Application title
        titlePanel("Be mindfull"),
        
        # Sidebar with a slider input for number of bins
        navlistPanel(
                tabPanel("Well Wishes",
                         mainPanel("We wish you well :)", 
                                   fluidRow(
                                   tags$audio(src = "NICU_5_mins_Well_wishes.mp3", 
                                              type = "audio/mp3", 
                                              controls = T)),
                                   fluidRow(tags$audio(src = "NICU_10min_Well_wishes.mp3", 
                                              type = "audio/mp3", 
                                              controls = T)))),
                tabPanel("Stressed",
                         mainPanel("hey this should say the tab title: tab 2", 
                                   tags$audio(src = "nordish.mp3", 
                                              type = "audio/mp3", 
                                               controls = NA))),
                
                tabPanel("?!",
                         mainPanel("hey this should say the tab title: tab 3", 
                                   tags$audio(src = "nordish.mp3", 
                                              type = "audio/mp3", 
                                              controls = NA))),
                
                tabPanel("tab 4",
                         mainPanel("hey this should say the tab title: tab 4", 
                                   tags$audio(src = "nordish.mp3", 
                                              type = "audio/mp3", 
                                              controls = NA)))
                
                
        )
))

# find functions to log browser session information.


