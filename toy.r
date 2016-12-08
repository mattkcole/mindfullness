library(shiny)
library(shinyjs)
library(readr)
library(dplyr)

write_date <- function(){
        date() %>%
                as.data.frame() %>%
                write_csv("TEST")
}

ui <- fluidPage(
        useShinyjs(),  # Include shinyjs
        
        actionButton("button", "Click me"),
        textInput("text", "Text"),
        tags$audio(inputId = "Audio1", src = "test.mp3", 
                   type = "audio/mp3", 
                   controls = T)
        )

server <- function(input, output) {
        onclick("Audio1", write_date())
}

shinyApp(ui, server)