library("shiny")
library("tuneR")
library("markdown")

shinyUI(fluidPage(
        
        # Application title
        titlePanel("Be mindfull"),
        
        # Sidebar with a slider input for number of bins
        navlistPanel(
                tabPanel("Well Wishes",
                         mainPanel("We wish you well :)", 
                                   fluidRow(
                                   tags$audio(src = "NICU_5 mins_Well wishes.mp3", 
                                              type = "audio/mp3", 
                                              controls = T,
                                              onended="rscripts/record.R")), # add js
                                   fluidRow(tags$audio(src = "NICU_10min_Well wishes.mp3", 
                                              type = "audio/mp3", 
                                              controls = T)))),
                
                
                tabPanel("Self kindness",
                         mainPanel("hey this should say the tab title: Self kindness", 
                                   fluidRow(
                                           tags$audio(src = "NICU_5 mins_Self-kindness.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T,
                                                      onended="rscripts/record.R")
                                           ), # add js
                                   fluidRow(
                                           tags$audio(src = "NICU_10mins_Selfkindness.mp3", 
                                                       type = "audio/mp3", 
                                                       controls = T)
                                           )
                        )
                ),
                
                tabPanel("Just breathe and be",
                         mainPanel("hey this should say the tab title: tab 3", 
                                   fluidRow(
                                           tags$audio(src = "NICU_5 mins_ Just breathe and be.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T,
                                                      onended="rscripts/record.R")
                                   ), # add js
                                   fluidRow(
                                           tags$audio(src = "NICU_10mins_Just breathe and be.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T)
                                   )
                         )
                ),
                
                tabPanel("Arriving",
                         mainPanel("hey this should say the tab title: tab 4", 
                                   fluidRow(
                                           tags$audio(src = "NICU_Arriving_5min.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T,
                                                      onended="rscripts/record.R")
                                   ), # add js
                                   fluidRow(
                                           tags$audio(src = "NICU_Arriving_10 mins.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T)
                                   )
                         )
                ),
                
                
        )
))

# find functions to log browser session information.


