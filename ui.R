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
                                   tags$audio(src = "well_wish_5.mp3", 
                                              type = "audio/mp3", 
                                              controls = T,
                                              onplaying = "hoge.js"
                                              )
                                   ), # add js
                                   
                                   fluidRow(
                                           tags$audio(src = "well_wish_10.mp3", 
                                              type = "audio/mp3", 
                                              controls = T,
                                              onplaying = "myFunction()")))
                         ),
                

                tabPanel("Self kindness",
                         mainPanel("hey this should say the tab title: Self kindness", 
                                   fluidRow(
                                           tags$audio(src = "self_kindness_5.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T)
                                           ), # add js
                                   fluidRow(
                                           tags$audio(src = "self_kindness_10.mp3", 
                                                       type = "audio/mp3", 
                                                       controls = T)
                                           )
                        )
                ),
                
                tabPanel("Just breathe and be",
                         mainPanel("hey this should say the tab title: tab 3", 
                                   fluidRow(
                                           tags$audio(src = "NICU_5_mins_Just_breathe_and_be.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T,
                                                      onended="rscripts/record.R")
                                   ), # add js
                                   fluidRow(
                                           tags$audio(src = "NICU_10mins_Just_breathe_and_be.mp3", 
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
                                           tags$audio(src = "NICU_Arriving_10_mins.mp3", 
                                                      type = "audio/mp3", 
                                                      controls = T)
                                   )
                         )
                )
                
                
        ),
        mainPanel(
                tags$head(HTML(
"<script>
function myFunction() {
    alert('The video is now playing');
}
</script>"

), "JAVASCRIPT IS HERE")
        )
))
# find functions to log browser session information.
